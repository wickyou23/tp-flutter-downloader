import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/core/base/base_cubit.dart';
import 'package:tp_flutter_downloader/data/DB/drift_db.dart';
import 'package:tp_flutter_downloader/domain/entities/video_bitrate.dart';
import 'package:tp_flutter_downloader/domain/entities/video_item.dart';
import 'package:tp_flutter_downloader/domain/entities/video_music.dart';
import 'package:tp_flutter_downloader/domain/usecases/download_video_thumb_usecase.dart';
import 'package:tp_flutter_downloader/domain/usecases/download_video_usecase.dart';
import 'package:tp_flutter_downloader/domain/usecases/search_video_usecase.dart';

import 'downloader_page_state.dart';

@injectable
class DownloaderPageCubit extends BaseCubit<DownloaderPageState> {
  DownloaderPageCubit(
    this.downloadThumb,
    this.searchVideo,
    this.downloadVideo,
  ) : super(DownloaderPageState.initial());

  final SearchVideoUseCase searchVideo;
  final DownloadVideoUseCase downloadVideo;
  final DownloadVideoThumbUseCase downloadThumb;

  Future<void> getVideoInfoFromUrl(String url) async {
    emit(DownloaderPageState.loading());
    try {
      final videoResp = await searchVideo.execute(url);
      emit(
        DownloaderPageState.getVideoItemSuccess(
          videoItem: videoResp.videoItem,
          videoSource: videoResp.videoSource,
          headers: videoResp.headers,
          selectedBitrate: videoResp.videoItem.bitRates.first,
          sessionId: videoResp.sessionId,
        ),
      );
    } catch (e) {
      emit(DownloaderPageState.error(e.toString()));
    }
  }

  Future<HistoryDBData> downloadVideoItem() async {
    final state = this.state;
    if (state is DownloaderPageGetVideoItemSuccess) {
      final preState = state.copyWith();
      String? sessionId = state.sessionId;
      String? mediaId = state.selectedBitrate?.bitrateId;
      mediaId ??= state.selectedMusic?.musicId;

      int? fileSize = state.selectedBitrate?.fileSize;
      fileSize ??= state.selectedMusic?.fileSize;

      final thumbInput = DownloadVideoThumbUseCaseInput(
        state.videoItem.fileName,
        state.videoItem.videoCover,
        state.headers,
        state.videoSource,
      );

      HistoryDBData? history;
      emit(DownloaderPageState.downloadProcessing(0));
      try {
        final thumbFile = await downloadThumb.execute(thumbInput);
        final videoInput = DownloadVideoUseCaseInput(
          mediaId ?? '',
          sessionId ?? '',
          state.videoItem.fileName,
          thumbFile.path,
          state.selectedBitrate,
          state.selectedMusic,
          state.headers,
          state.videoSource,
          state.videoItem,
        );

        await downloadVideo.executeStream(videoInput).forEach((output) {
          if (output.history != null) {
            history = output.history;
          } else if (output.process != null) {
            emit(DownloaderPageState.downloadProcessing(output.process!));
          } else if (output.isMerging) {
            emit(DownloaderPageState.mergingVideo());
          }
        });
      } catch (e) {
        emit(preState);
        rethrow;
      }

      emit(preState);

      if (history != null) {
        return history!;
      } else {
        throw Exception('Cannot download video');
      }
    } else {
      throw Exception('Cannot download video');
    }
  }

  void selectVideoBitrate(VideoBitrate? bitrate) {
    emit((state as DownloaderPageGetVideoItemSuccess).copyWith(
      selectedBitrate: bitrate,
      selectedMusic: null,
    ));
  }

  void selectAudioBitrate(VideoMusic? audio) {
    emit((state as DownloaderPageGetVideoItemSuccess).copyWith(
      selectedMusic: audio,
      selectedBitrate: null,
    ));
  }
}
