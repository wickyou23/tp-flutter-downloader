part of 'downloader.dart';

class _VideoContent extends StatelessWidget {
  final Function(VideoBitrate) onSelectBitrate;
  final Function() onDownloadVideo;

  const _VideoContent({
    required this.onSelectBitrate,
    required this.onDownloadVideo,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloaderPageCubit, DownloaderPageState>(
      buildWhen: (previous, current) {
        return current is DownloaderPageGetVideoItemSuccess ||
            current is DownloaderPageLoading;
      },
      builder: (context, state) {
        VideoItem? video;
        VideoBitrate? selectedBitrate;
        VideoMusic? selectedMusic;
        bool hasMusic = false;
        if (state is DownloaderPageGetVideoItemSuccess) {
          video = state.videoItem;
          selectedBitrate = state.selectedBitrate;
          hasMusic = video.musics.isNotEmpty;
          selectedMusic = state.selectedMusic;
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (hasMusic && video != null)
              _VideoContentSegment(onSelectedVideo: (type) {
                if (type == _VideoContentType.video) {
                  context.read<DownloaderPageCubit>().selectVideoBitrate(
                        video!.bitRates.first,
                      );
                } else {
                  context.read<DownloaderPageCubit>().selectAudioBitrate(
                        video!.musics.first,
                      );
                }
              }),
            SizedBox(height: 16),
            if (video == null) _buildVideoEmpty(),
            if (video != null)
              _buildVideoContent(
                context,
                video,
                selectedBitrate,
                selectedMusic,
              ),
            SizedBox(height: 26),
            BlocBuilder<DownloaderPageCubit, DownloaderPageState>(
                builder: (context, state) {
              if (state is DownloaderPageDownloadProcessing) {
                return ProgressBar(
                  progress: state.process / 100,
                  height: 50,
                  label: 'Downloading... ${state.process}%',
                );
              } else if (state is DownloaderPageMergingVideo) {
                return ProgressBar(
                  progress: 1,
                  height: 50,
                  label: 'Processing Video File!!!',
                );
              }

              if (selectedBitrate != null || selectedMusic != null) {
                return ElevatedButton(
                  onPressed: () async {
                    onDownloadVideo();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    selectedBitrate != null
                        ? 'Download Video'
                        : 'Download Audio',
                  ),
                );
              }

              return SizedBox.shrink();
            }),
          ],
        );
      },
    );
  }

  Widget _buildVideoEmpty() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: Radius.circular(12),
      dashPattern: [6, 4],
      strokeWidth: 1,
      color: Colors.grey,
      padding: EdgeInsets.all(1),
      child: Container(
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey[200],
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.video_collection,
                size: 40,
                color: Colors.grey,
              ),
              const SizedBox(height: 8),
              Text(
                'Video Preview goes here',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVideoContent(
    BuildContext context,
    VideoItem video,
    VideoBitrate? selectedBitrate,
    VideoMusic? selectedMusic,
  ) {
    String qualityValue = "";
    bool isShowArrowDown = false;
    if (selectedBitrate != null) {
      qualityValue =
          "Quality: ${min(selectedBitrate.width, selectedBitrate.height)}p";
      isShowArrowDown = video.bitRates.length > 1;
    } else if (selectedMusic != null) {
      qualityValue = selectedMusic.mimeType?.toUpperCase() ?? '';
    }

    return Column(
      children: [
        if (video.title.isNotEmpty)
          Text(
            video.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 1,
          ),
        if (video.desc.isNotEmpty)
          Text(
            video.desc,
            style: TextStyle(
              fontSize: 16,
            ),
            softWrap: true,
            maxLines: 2,
          ),
        SizedBox(height: 16),
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: TikCachedNetworkImage(
                  url: video.videoCover,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 8,
              bottom: 8,
              child: TextButton(
                onPressed: () {
                  if (video.bitRates.length <= 1 || selectedBitrate == null) {
                    return;
                  }

                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: (50 * video.bitRates.length).toDouble() + 32,
                        child: ListView.separated(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          itemBuilder: (context, index) {
                            final item = video.bitRates[index];
                            String itemSizeStr = item.qualityString;
                            if (item.fileSize != null) {
                              itemSizeStr += itemSizeStr.isEmpty
                                  ? item.sizeString
                                  : ' - ${item.sizeString}';
                            }

                            if (itemSizeStr.isNotEmpty) {
                              itemSizeStr = ' ($itemSizeStr)';
                            }

                            return SizedBox(
                              height: 50,
                              child: ListTile(
                                title: RichText(
                                  text: TextSpan(
                                    text: '${min(item.height, item.width)}p ',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: itemSizeStr,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                  onSelectBitrate(item);
                                },
                              ),
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              height: 1,
                              indent: 16,
                            );
                          },
                          itemCount: video.bitRates.length,
                        ),
                      );
                    },
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.9),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 4),
                      Text(
                        qualityValue,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 4),
                      if (isShowArrowDown)
                        Icon(Icons.arrow_drop_down, color: Colors.white),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
