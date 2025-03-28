import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tp_flutter_downloader/core/base/base_bloc_state.dart';
import 'package:tp_flutter_downloader/domain/entities/video_bitrate.dart';
import 'package:tp_flutter_downloader/domain/entities/video_item.dart';
import 'package:tp_flutter_downloader/domain/entities/video_music.dart';
import 'package:tp_flutter_downloader/domain/entities/video_response.dart';

part 'downloader_page_state.freezed.dart';

@freezed
class DownloaderPageState with _$DownloaderPageState implements BaseBlocState {
  const factory DownloaderPageState.initial() = DownloaderPageInitial;

  const factory DownloaderPageState.loading() = DownloaderPageLoading;

  const factory DownloaderPageState.getVideoItemSuccess({
    required VideoItem videoItem,
    required VideoSource videoSource,
    required Map<String, dynamic> headers,
    VideoBitrate? selectedBitrate,
    VideoMusic? selectedMusic,
    String? sessionId,
  }) = DownloaderPageGetVideoItemSuccess;

  const factory DownloaderPageState.error(String message) = DownloaderPageError;

  const factory DownloaderPageState.downloadProcessing(int process) =
      DownloaderPageDownloadProcessing;

  const factory DownloaderPageState.mergingVideo() = DownloaderPageMergingVideo;
}
