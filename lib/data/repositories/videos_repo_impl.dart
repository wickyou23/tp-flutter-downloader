import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_gallery_saver_plus/image_gallery_saver_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tp_flutter_downloader/core/networks/dio_client.dart';
import 'package:tp_flutter_downloader/core/networks/models/requests/download_video_request.dart';
import 'package:tp_flutter_downloader/core/networks/models/requests/searching_video_request.dart';
import 'package:tp_flutter_downloader/core/networks/models/responses/api_reponse.dart';
import 'package:tp_flutter_downloader/domain/entities/video_response.dart';
import 'package:tp_flutter_downloader/domain/repositories/videos_repo.dart';
import 'package:tp_flutter_downloader/core/utils/uitls.dart';
import 'package:path/path.dart' as p;

@LazySingleton(as: VideosRepo)
class VideosRepoImpl implements VideosRepo {
  final DioClient client;

  VideosRepoImpl(this.client);

  @override
  Future<VideoResponse> searchVideos(String sharedUrl) async {
    final resp = await client.get(SearchingVideoRequest(sharedUrl));
    final apiResp = ApiResponse.fromJson(resp.data);
    return VideoResponse.fromJson(apiResp.data);
  }

  @override
  Future<dynamic> saveMediaFileToLocalDevice(
      File mediaFile, String mediaPath, bool isVideo) async {
    if (isVideo) {
      final result = await ImageGallerySaverPlus.saveFile(mediaPath);
      return result['isSuccess'];
    } else {
      bool isGranted = await Permission.storage.isGranted ||
          await Permission.manageExternalStorage.isGranted;
      if (!isGranted) {
        final status = await Permission.storage.request();
        isGranted = status.isGranted;
        if (!isGranted) {
          final status = await Permission.manageExternalStorage.request();
          isGranted = status.isGranted;
        }
      }

      final dowloadFolder = await getDownloadDir();
      if (dowloadFolder == null || !isGranted) {
        return false;
      }

      final file = File('${dowloadFolder.path}/${mediaPath.split('/').last}');
      await file.writeAsBytes(await mediaFile.readAsBytes());
      return file;
    }
  }

  @override
  Future<File> downloadTikVideo(
    String url,
    String mimeType,
    String fileName,
    Map<String, dynamic> tikHeader,
    Function(int, int)? onDownloading,
  ) async {
    if (url.isEmpty || mimeType.isEmpty) {
      throw Exception('Invalid video url or mimeType');
    }

    final isVideo = mimeType.contains('video');
    final file = await getCacheFilePath(
      mimeType,
      fileName,
      isVideo,
    );

    // var startTime = DateTime.now();
    final downloadDio = Dio();
    await downloadDio.download(
      url,
      file.path,
      options: Options(
        headers: tikHeader,
        responseType: ResponseType.stream,
        receiveTimeout: Duration.zero,
      ),
      onReceiveProgress: onDownloading,
      deleteOnError: true,
    );

    // var duration = DateTime.now().difference(startTime).inSeconds;
    // var sizeMB = fileSize / (1024 * 1024);
    // debugPrint(
    //   "Total: ${sizeMB.toStringAsFixed(2)} Speed: ${(sizeMB / duration).toStringAsFixed(2)} MB/s",
    // );

    return file;
  }

  @override
  Future<File> downloadYTMedia(
    String sessionId,
    String mediaId,
    String mimeType,
    String fileName,
    Function(int, int)? onDownloading,
  ) async {
    final isVideo = mimeType.contains('video');
    if (mimeType.isEmpty) {
      throw Exception('Invalid video url or mimeType');
    }

    final file = await getCacheFilePath(
      mimeType,
      fileName,
      isVideo,
    );

    // var startTime = DateTime.now();
    // int totalSize = 0;

    final req = DownloadVideoRequest(sessionId, mediaId, "YOUTUBE", file.path);
    await client.download(
      req,
      options: Options(
        responseType: ResponseType.stream,
        receiveTimeout: Duration.zero,
        headers: req.headers,
      ),
      onReceiveProgress: onDownloading,
    );

    // var duration = DateTime.now().difference(startTime).inMilliseconds / 1000;
    // var sizeMB = totalSize / (1024 * 1024);
    // debugPrint("Speed: ${(sizeMB / duration).toStringAsFixed(2)} MB/s");

    return file;
  }

  @override
  Future<File> getCacheFilePath(
    String mineType,
    String fileName,
    bool isVideo,
  ) async {
    final mimeType = mineType.split(';').first;
    String fileExt = mimeType.split('/').last;
    if (!isVideo && fileExt == 'mp4') {
      fileExt = 'm4a';
    }

    final dir = await getApplicationDocumentsDirectory();
    final videosDir = Directory('${dir.path}/videos');
    if (!await videosDir.exists()) {
      await videosDir.create(recursive: true);
    }

    final file = File(
      '${videosDir.path}/$fileName.$fileExt',
    );

    return file;
  }

  @override
  Future<File> downloadVideoThumbnail(
    String url,
    String fileName, {
    Map<String, dynamic> headers = const {},
  }) async {
    final downloadDio = Dio();
    final resp = await downloadDio.get(
      url,
      options: Options(
        headers: headers,
        responseType: ResponseType.bytes,
      ),
    );

    final ext = p.extension(Uri.parse(url).path);
    if (resp.statusCode != 200) {
      throw Exception('Download failed');
    }

    final dir = await getApplicationDocumentsDirectory();
    final thumbDir = Directory('${dir.path}/thumbs');
    if (!await thumbDir.exists()) {
      await thumbDir.create(recursive: true);
    }

    final file = File('${thumbDir.path}/$fileName$ext');
    await file.writeAsBytes(resp.data);
    return file;
  }
}
