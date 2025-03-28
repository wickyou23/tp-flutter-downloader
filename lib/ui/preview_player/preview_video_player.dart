import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_flutter_downloader/core/base/base_page_cubit_state.dart';
import 'package:tp_flutter_downloader/data/models/ui/preview_video_model.dart';
import 'package:tp_flutter_downloader/di/di.dart';
import 'package:tp_flutter_downloader/domain/usecases/delete_history_usecase.dart';
import 'package:tp_flutter_downloader/domain/usecases/save_file_to_local_usecase.dart';
import 'package:tp_flutter_downloader/core/packages/app_channel.dart';
import 'package:tp_flutter_downloader/domain/usecases/share_media_to_social_usecase.dart';
import 'package:tp_flutter_downloader/ui/common/progress_bar.dart';
import 'package:tp_flutter_downloader/ui/common/sharing_content_view.dart';
import 'package:tp_flutter_downloader/ui/preview_player/bloc/preview_video_player_cubit.dart';
import 'package:tp_flutter_downloader/ui/preview_player/bloc/preview_video_player_state.dart';
import 'package:video_player/video_player.dart';

enum RightMenuAction { share, save, delete }

@RoutePage()
class PreviewVideoPlayerPage extends StatefulWidget {
  final PreviewVideoDisplayable displayable;

  const PreviewVideoPlayerPage({
    super.key,
    required this.displayable,
  });

  @override
  State<PreviewVideoPlayerPage> createState() => _PreviewVideoPlayerPageState();
}

class _PreviewVideoPlayerPageState extends BasePageCubitState<
    PreviewVideoPlayerPage, PreviewVideoPlayerCubit> {
  VideoPlayerController? _videoController;
  PlayerController? _waveController;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  PreviewVideoPlayerCubit buildBloc() {
    return PreviewVideoPlayerCubit(
      widget.displayable.mediaFile,
      widget.displayable.isVideo,
      getIt<SaveFileToLocalUseCase>(),
      getIt<DeleteHistoryUsecase>(),
      getIt<ShareMediaToSocialUsecase>(),
    );
  }

  @override
  void initState() {
    super.initState();

    _initializeVideoPlayerFuture = Future(() {});
    if (widget.displayable.isVideo) {
      _videoController =
          VideoPlayerController.file(widget.displayable.mediaFile)
            ..addListener(
              () {
                if (_videoController!.value.isPlaying) {
                  bloc.durationChanged(
                    _videoController!.value.position,
                    _videoController!.value.duration,
                  );
                }

                if (_videoController!.value.isCompleted) {
                  bloc.durationChanged(
                    _videoController!.value.position,
                    _videoController!.value.duration,
                  );

                  bloc.endVideo();
                }
              },
            );

      _initializeVideoPlayerFuture = _videoController!.initialize();
    } else {
      _initializeVideoPlayerFuture = (() async {
        _waveController = PlayerController();
        Uri fileUri = Uri.file(widget.displayable.mediaFile.path);
        String fixedPath = fileUri.toString();
        await _waveController?.preparePlayer(
          path: fixedPath,
          shouldExtractWaveform: true,
        );

        _waveController?.setFinishMode(finishMode: FinishMode.pause);
        _waveController?.updateFrequency = UpdateFrequency.high;
        _waveController?.onCompletion.listen((_) {
          bloc.endVideo();
        });

        return;
      })();
    }
  }

  @override
  void dispose() {
    _videoController?.dispose();
    _waveController?.dispose();
    _waveController?.release();
    super.dispose();
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocListener<PreviewVideoPlayerCubit, PreviewPlayerPageState>(
      listener: (context, state) {
        if (state is PreviewPlayerPageSavingSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Row(
                children: [
                  const Text(
                    'Save success!!!',
                    style: TextStyle(fontSize: 18),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.folder_open_rounded),
                    color: Colors.white,
                    onPressed: () async {
                      if (state.isVideo) {
                        await AppChannel().openVideoGallery();
                      } else {
                        await AppChannel().openDowloadFolder();
                      }
                    },
                  ),
                ],
              ),
              backgroundColor: Colors.green,
            ),
          );
        }

        if (state is PreviewPlayerPageError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: Colors.red,
            ),
          );
        }

        if (state is PreviewPlayerPageDeleteVideoSuccess) {
          context.router.popForced();
        }
      },
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) {
            return;
          }

          bloc.endVideo();
          context.router.popForced();
        },
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Preview Video'),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            foregroundColor: Colors.white,
            titleSpacing: 0,
            actions: [
              PopupMenuButton<RightMenuAction>(
                color: Colors.white,
                onSelected: (RightMenuAction value) {
                  switch (value) {
                    case RightMenuAction.share:
                      {
                        // bloc.shareMedia(widget.displayable);
                        showModalBottomSheet(
                          context: context,
                          builder: (_) => SharingContentView(
                            usecase: bloc.shareMediaToSocialUsecase,
                            videoPath: widget.displayable.mediaFile.path,
                          ),
                        );
                      }
                    case RightMenuAction.save:
                      {
                        bloc.saveVideoToPhotoLibrary();
                      }
                    case RightMenuAction.delete:
                      {
                        _showDeleteConfirmationDialog();
                      }
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: RightMenuAction.share,
                    child: Row(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.black87,
                        ),
                        SizedBox(width: 8),
                        Text("Share"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: RightMenuAction.save,
                    child: Row(
                      children: [
                        Icon(
                          Icons.save,
                          color: Colors.black87,
                        ),
                        SizedBox(width: 8),
                        Text("Save"),
                      ],
                    ),
                  ),
                  PopupMenuItem(
                    value: RightMenuAction.delete,
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete,
                          color: Colors.red,
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Delete",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          body: Stack(
            children: [
              FutureBuilder(
                future: _initializeVideoPlayerFuture,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Container(
                      color: Colors.black,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          if (_videoController != null)
                            Center(
                              child: AspectRatio(
                                aspectRatio:
                                    _videoController!.value.aspectRatio,
                                child: VideoPlayer(_videoController!),
                              ),
                            ),
                          if (_waveController != null)
                            Center(
                              child: AudioFileWaveforms(
                                size: Size(double.infinity, 120),
                                playerController: _waveController!,
                                waveformType: WaveformType.long,
                                enableSeekGesture: false,
                                waveformData: _waveController!.waveformData,
                                playerWaveStyle: PlayerWaveStyle(
                                  liveWaveColor: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  seekLineColor: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                ),
                              ),
                            ),
                          BlocBuilder<PreviewVideoPlayerCubit,
                              PreviewPlayerPageState>(
                            builder: (context, state) {
                              bool isPlay = false;
                              if (state is PreviewPlayerPagePlayVideo) {
                                isPlay = state.isPlay;
                              }

                              return Positioned(
                                bottom:
                                    MediaQuery.of(context).padding.bottom + 8,
                                right: 0,
                                left: 0,
                                child: IconButton(
                                  icon: Icon(
                                    isPlay
                                        ? Icons.pause_circle_filled_rounded
                                        : Icons.play_circle_fill_outlined,
                                  ),
                                  color: Colors.white,
                                  iconSize: 60,
                                  onPressed: () {
                                    if (isPlay) {
                                      _pause();
                                    } else {
                                      _play();
                                    }
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    );
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
              BlocBuilder<PreviewVideoPlayerCubit, PreviewPlayerPageState>(
                buildWhen: (previous, current) =>
                    current is PreviewPlayerPagePlayVideo ||
                    current is PreviewPlayerPageInitial,
                builder: (context, state) {
                  if (state is! PreviewPlayerPagePlayVideo ||
                      !widget.displayable.isVideo) {
                    return const SizedBox.shrink();
                  }

                  return Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: ProgressBar(
                      progress:
                          state.position.inSeconds / state.total.inSeconds,
                      progressColor: Colors.white,
                      height: 5,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _play() {
    bloc.playVideo();
    if (_videoController != null) {
      _videoController!.play();
    }

    if (_waveController != null) {
      _waveController!.startPlayer();
    }
  }

  void _pause() {
    bloc.pauseVideo();
    if (_videoController != null) {
      _videoController!.pause();
    }

    if (_waveController != null) {
      _waveController!.pausePlayer();
    }
  }

  void _showDeleteConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            "Confirm Delete",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w500,
            ),
          ),
          content: Text("Are you sure you want to delete this file?"),
          actions: [
            TextButton(
              onPressed: () {
                context.router.popForced();
              },
              child: Text(
                "Cancel",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                context.router.popForced();
                await bloc.deleteVideo(widget.displayable);
              },
              child: Text(
                "Delete",
                style: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
