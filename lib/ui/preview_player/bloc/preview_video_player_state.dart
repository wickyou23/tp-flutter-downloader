import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tp_flutter_downloader/core/base/base_bloc_state.dart';

part 'preview_video_player_state.freezed.dart';

@freezed
class PreviewPlayerPageState
    with _$PreviewPlayerPageState
    implements BaseBlocState {
  const factory PreviewPlayerPageState.initial(File file, bool isVideo) =
      PreviewPlayerPageInitial;

  const factory PreviewPlayerPageState.loading() = PreviewPlayerPageLoading;

  const factory PreviewPlayerPageState.error(String message) =
      PreviewPlayerPageError;

  const factory PreviewPlayerPageState.savingSuccess(
    bool isSuccess,
    File? file,
    bool isVideo,
  ) = PreviewPlayerPageSavingSuccess;

  const factory PreviewPlayerPageState.playVideo(
    File file,
    bool isVideo,
    bool isPlay,
    Duration position,
    Duration total,
  ) = PreviewPlayerPagePlayVideo;

  const factory PreviewPlayerPageState.deleteVideoSuccess() =
      PreviewPlayerPageDeleteVideoSuccess;
}
