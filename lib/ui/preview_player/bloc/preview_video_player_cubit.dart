import 'dart:io';

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/core/base/base_cubit.dart';
import 'package:tp_flutter_downloader/data/models/ui/preview_video_model.dart';
import 'package:tp_flutter_downloader/domain/usecases/delete_history_usecase.dart';
import 'package:tp_flutter_downloader/domain/usecases/save_file_to_local_usecase.dart';
import 'package:tp_flutter_downloader/domain/usecases/share_media_to_social_usecase.dart';
import 'package:tp_flutter_downloader/ui/preview_player/bloc/preview_video_player_state.dart';

@injectable
class PreviewVideoPlayerCubit extends BaseCubit<PreviewPlayerPageState> {
  final SaveFileToLocalUseCase saveFileUseCase;
  final DeleteHistoryUsecase deleteHistoryUsecase;
  final ShareMediaToSocialUsecase shareMediaToSocialUsecase;

  PreviewVideoPlayerCubit(
    File file,
    bool isVideo,
    this.saveFileUseCase,
    this.deleteHistoryUsecase,
    this.shareMediaToSocialUsecase,
  ) : super(PreviewPlayerPageState.initial(
          file,
          isVideo,
        ));

  Future<void> saveVideoToPhotoLibrary() async {
    File? file;
    bool isVideo = false;
    state.mapOrNull(
      initial: (value) {
        file = value.file;
        isVideo = value.isVideo;
      },
      playVideo: (value) {
        file = value.file;
        isVideo = value.isVideo;
      },
    );

    if (file == null) {
      emit(PreviewPlayerPageState.error("File not found"));
      return;
    }

    emit(PreviewPlayerPageState.loading());
    try {
      final input = SaveFileToLocalUseCaseInput(
        file: file!,
        isVideo: isVideo,
      );

      final output = await saveFileUseCase.execute(input);
      if (output.isSuccess) {
        emit(PreviewPlayerPageState.savingSuccess(
          output.isSuccess,
          output.newPath,
          isVideo,
        ));
      } else {
        emit(PreviewPlayerPageState.error("Save file failed"));
      }
    } catch (e) {
      debugPrint(e.toString());
      emit(PreviewPlayerPageState.error(e.toString()));
    }

    emit(PreviewPlayerPageState.initial(file!, isVideo));
  }

  void durationChanged(Duration position, Duration total) {
    File? file;
    bool isVideo = false;
    state.mapOrNull(
      initial: (value) {
        file = value.file;
        isVideo = value.isVideo;
      },
      playVideo: (value) {
        file = value.file;
        isVideo = value.isVideo;
      },
    );

    if (file == null) {
      return;
    }

    emit(PreviewPlayerPageState.playVideo(
      file!,
      isVideo,
      true,
      position,
      total,
    ));
  }

  void playVideo() {
    File? file;
    bool isVideo = false;
    state.mapOrNull(
      initial: (value) {
        file = value.file;
        isVideo = value.isVideo;
      },
      playVideo: (value) {
        file = value.file;
        isVideo = value.isVideo;
      },
    );

    if (file == null) {
      return;
    }

    emit(PreviewPlayerPageState.playVideo(
      file!,
      isVideo,
      true,
      Duration.zero,
      Duration(seconds: 1),
    ));
  }

  void pauseVideo() {
    final state = this.state;
    if (state is PreviewPlayerPagePlayVideo) {
      emit(state.copyWith(isPlay: false));
    }
  }

  void endVideo() {
    final state = this.state;
    if (state is PreviewPlayerPagePlayVideo) {
      emit(state.copyWith(isPlay: false, position: Duration.zero));
    }
  }

  Future<void> deleteVideo(PreviewVideoDisplayable media) async {
    await deleteHistoryUsecase.execute(
      DeleteHistoryUsecaseInput(
        id: media.id,
        mediaId: media.mediaId,
        thumbPath: media.thumbFile?.path,
        mediaPath: media.mediaFile.path,
      ),
    );

    emit(PreviewPlayerPageState.deleteVideoSuccess());
  }
}
