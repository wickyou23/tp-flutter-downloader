import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:ffmpeg_kit_flutter/ffmpeg_kit.dart';
import 'package:ffmpeg_kit_flutter/return_code.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/core/networks/dio_client.dart';
import 'package:tp_flutter_downloader/data/DB/drift_db.dart';
import 'package:tp_flutter_downloader/domain/entities/video_bitrate.dart';
import 'package:tp_flutter_downloader/domain/entities/video_item.dart';
import 'package:tp_flutter_downloader/domain/entities/video_music.dart';
import 'package:tp_flutter_downloader/domain/entities/video_response.dart';
import 'package:tp_flutter_downloader/domain/repositories/histories_repo.dart';
import 'package:tp_flutter_downloader/domain/repositories/videos_repo.dart';
import 'package:tp_flutter_downloader/domain/usecases/base_usecase.dart';

class DownloadVideoUseCaseInput {
  final String id;
  final String sessionId;
  final String fileName;
  final String thumbPath;
  final Map<String, dynamic> headers;
  final VideoSource videoSource;
  final VideoItem videoItem;
  final VideoBitrate? videoBitrate;
  final VideoMusic? videoMusic;

  DownloadVideoUseCaseInput(
    this.id,
    this.sessionId,
    this.fileName,
    this.thumbPath,
    this.videoBitrate,
    this.videoMusic,
    this.headers,
    this.videoSource,
    this.videoItem,
  );

  String get fullFileName {
    final width = videoBitrate?.width;
    final height = videoBitrate?.height;
    String prefix = 'audio';
    if (width != null && height != null) {
      prefix = '${width}_$height';
    }

    return '${prefix}_$fileName';
  }
}

class DownloadVideoUseCaseOutput {
  final HistoryDBData? history;
  final int? process;
  final bool isVideo;
  final bool isMerging;

  DownloadVideoUseCaseOutput({
    this.history,
    this.process,
    this.isMerging = false,
    this.isVideo = true,
  });
}

@injectable
class DownloadVideoUseCase extends BaseUseCase
    implements
        StreamUseCase<DownloadVideoUseCaseInput, DownloadVideoUseCaseOutput> {
  final DioClient dioClient;
  final HistoriesRepo<HistoryDBData> historiesRepo;
  final VideosRepo videosRepo;

  DownloadVideoUseCase(
    this.dioClient,
    this.historiesRepo,
    this.videosRepo,
  );

  Dio get dio => dioClient.dio;

  @override
  Stream<DownloadVideoUseCaseOutput> executeStream(
      DownloadVideoUseCaseInput input) {
    final StreamController<DownloadVideoUseCaseOutput> controller =
        StreamController();

    try {
      switch (input.videoSource) {
        case VideoSource.tiktok:
        case VideoSource.douyin:
          _downloadTikVideo(input, controller);
          return controller.stream;
        case VideoSource.youtube:
          int? itag;
          if (input.videoBitrate != null) {
            itag = input.videoBitrate!.itag;
          }

          if (itag == 18 || itag == null) {
            _downloadYTFullVideo(input, controller);
          } else {
            _downloadYTVideoAndAudio(input, controller);
          }
          return controller.stream;
        default:
          throw UnimplementedError();
      }
    } catch (e) {
      controller.close();
      rethrow;
    }
  }

  Future<void> _downloadTikVideo(
    DownloadVideoUseCaseInput input,
    StreamController<DownloadVideoUseCaseOutput> controller,
  ) async {
    String url = '';
    String mimeType = '';
    bool isVideo = true;
    if (input.videoMusic != null) {
      url = input.videoMusic!.mediaUrls.firstOrNull ?? '';
      mimeType = input.videoMusic!.mimeType ?? '';
      isVideo = false;
    } else if (input.videoBitrate != null) {
      url = input.videoBitrate!.mediaUrls.firstOrNull ?? '';
      mimeType = input.videoBitrate!.mimeType ?? '';
    }

    final file = await videosRepo.downloadTikVideo(
      url,
      mimeType,
      input.fullFileName,
      input.headers,
      (received, total) => controller.add(
        DownloadVideoUseCaseOutput(
          process: (received / total * 100).toInt(),
          isVideo: isVideo,
        ),
      ),
    );

    final history = await _saveDownloadHistory(input, mimeType, file.path);

    controller.add(
      DownloadVideoUseCaseOutput(
        history: history,
        isVideo: isVideo,
      ),
    );

    controller.close();
  }

  Future<void> _downloadYTFullVideo(
    DownloadVideoUseCaseInput input,
    StreamController<DownloadVideoUseCaseOutput> controller,
  ) async {
    String mimeType = '';
    bool isVideo = true;
    if (input.videoMusic != null) {
      mimeType = input.videoMusic!.mimeType ?? '';
      isVideo = false;
    } else if (input.videoBitrate != null) {
      mimeType = input.videoBitrate!.mimeType ?? '';
    }

    if (mimeType.isEmpty) {
      throw Exception('Invalid video url or mimeType');
    }

    final file = await videosRepo.downloadYTMedia(
      input.sessionId,
      input.id,
      mimeType,
      input.fullFileName,
      (received, total) => controller.add(
        DownloadVideoUseCaseOutput(
          process: (received / total * 100).toInt(),
          isVideo: isVideo,
        ),
      ),
    );

    // var duration = DateTime.now().difference(startTime).inMilliseconds / 1000;
    // var sizeMB = totalSize / (1024 * 1024);
    // debugPrint("Speed: ${(sizeMB / duration).toStringAsFixed(2)} MB/s");

    final history = await _saveDownloadHistory(input, mimeType, file.path);

    controller.add(
      DownloadVideoUseCaseOutput(
        history: history,
        isVideo: isVideo,
      ),
    );
    controller.close();
  }

  Future<void> _downloadYTVideoAndAudio(
    DownloadVideoUseCaseInput input,
    StreamController<DownloadVideoUseCaseOutput> controller,
  ) async {
    String videoMimeType = '';
    int videoSize = 0;
    int audioSize = 0;
    if (input.videoBitrate != null) {
      videoMimeType = input.videoBitrate!.mimeType ?? '';
      videoSize = input.videoBitrate!.fileSize ?? 0;
    }

    VideoMusic? audioItem = input.videoItem.musics.firstOrNull;
    if (audioItem == null) {
      throw Exception('Invalid video url or mimeType');
    }

    final audioMimeType = audioItem.mimeType ?? '';
    if (audioMimeType.isEmpty || videoMimeType.isEmpty) {
      throw Exception('Invalid video url or mimeType');
    }

    audioSize = audioItem.fileSize ?? 0;
    final totalSize = audioSize + videoSize;
    int audioRecv = 0;
    int videoRecv = 0;
    downloadProgress(int recv, bool isVideo) {
      if (isVideo) {
        videoRecv = recv;
      } else {
        audioRecv = recv;
      }

      controller.add(
        DownloadVideoUseCaseOutput(
          process: ((videoRecv + audioRecv) / totalSize * 100).toInt(),
        ),
      );
    }

    final videoTask = videosRepo.downloadYTMedia(
      input.sessionId,
      input.id,
      videoMimeType,
      '${input.fullFileName}_video',
      (received, _) => downloadProgress(received, true),
    );

    final audioTask = videosRepo.downloadYTMedia(
      input.sessionId,
      audioItem.musicId,
      audioMimeType,
      '${input.fullFileName}_audio',
      (received, _) => downloadProgress(received, false),
    );

    List<File> results = await Future.wait([videoTask, audioTask]);
    final videoFile = results[0];
    final audioFile = results[1];

    final outputFile = await videosRepo.getCacheFilePath(
      videoMimeType,
      input.fullFileName,
      true,
    );

    controller.add(DownloadVideoUseCaseOutput(
      isVideo: true,
      isMerging: true,
    ));

    await _mergeVideoAndAudio(
      videoFile.path,
      audioFile.path,
      outputFile.path,
    );

    videoFile.delete();
    audioFile.delete();

    final history =
        await _saveDownloadHistory(input, videoMimeType, outputFile.path);

    controller.add(DownloadVideoUseCaseOutput(
      history: history,
      isVideo: true,
    ));

    controller.close();
  }

  Future<void> _mergeVideoAndAudio(
      String videoPath, String audioPath, String outputPath) async {
    try {
      final String command =
          '-y -i $videoPath -i $audioPath -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 $outputPath';
      final session = await FFmpegKit.execute(command);
      final returnCode = await session.getReturnCode();

      if (ReturnCode.isSuccess(returnCode)) {
        debugPrint('Video and audio merged successfully');
      } else {
        final log = await session.getOutput();
        throw Exception('Error merging video and audio: $log');
      }
    } catch (e) {
      throw Exception('Exception while merging: $e');
    }
  }

  Future<HistoryDBData> _saveDownloadHistory(
    DownloadVideoUseCaseInput input,
    String mimeType,
    String videoPath,
  ) async {
    final history = await historiesRepo.saveHistories(
      input.videoItem,
      mimeType,
      input.thumbPath,
      videoPath,
      input.videoBitrate?.width,
      input.videoBitrate?.height,
      input.videoBitrate?.qualityString,
    );

    if (history == null) {
      throw Exception('Failed to save download history');
    }

    return history;
  }
}
