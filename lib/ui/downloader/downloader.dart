import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_flutter_downloader/core/base/base_page_cubit_state.dart';
import 'package:tp_flutter_downloader/data/models/db/history_db_wrapper.dart';
import 'package:tp_flutter_downloader/domain/entities/video_bitrate.dart';
import 'package:tp_flutter_downloader/domain/entities/video_item.dart';
import 'package:tp_flutter_downloader/domain/entities/video_music.dart';
import 'package:tp_flutter_downloader/router.gr.dart';
import 'package:tp_flutter_downloader/ui/common/progress_bar.dart';
import 'package:tp_flutter_downloader/ui/common/tik_cached_network_image.dart';
import 'package:tp_flutter_downloader/ui/downloader/bloc/downloader_page_cubit.dart';
import 'package:tp_flutter_downloader/ui/downloader/bloc/downloader_page_state.dart';

part 'downloader.video_content.dart';
part 'downloader.video_segment.dart';

@RoutePage()
class DownloaderPage extends StatefulWidget {
  const DownloaderPage({
    super.key,
  });

  @override
  State<DownloaderPage> createState() => _DownloaderPageState();
}

class _DownloaderPageState
    extends BasePageCubitState<DownloaderPage, DownloaderPageCubit> {
  final urlTextController = TextEditingController(
    text:
        "https://www.tiktok.com/@dinhcaoamnhac2023/video/7389981000471792904?is_from_webapp=1&sender_device=pc&web_id=7445512916047496712",
  );

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.download_rounded,
              size: 24,
            ),
            SizedBox(width: 8),
            Text(
              'Downloader',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                child: TextField(
                  controller: urlTextController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: 'Paste URL here',
                  ),
                ),
              ),
              SizedBox(height: 20),
              BlocBuilder<DownloaderPageCubit, DownloaderPageState>(
                builder: (context, state) {
                  return state.maybeWhen(loading: () {
                    return SizedBox(
                      height: 50,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  }, orElse: () {
                    return ElevatedButton(
                      onPressed: () async {
                        FocusScope.of(context).unfocus();
                        if (urlTextController.text.isEmpty) {
                          return;
                        }

                        bloc.getVideoInfoFromUrl(urlTextController.text);
                      },
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text('Generate Video Content'),
                    );
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 50),
          _VideoContent(
            onSelectBitrate: (bitrate) {
              FocusScope.of(context).unfocus();
              bloc.selectVideoBitrate(bitrate);
            },
            onDownloadVideo: () async {
              FocusScope.of(context).unfocus();
              final output = await bloc.downloadVideoItem();
              if (context.mounted) {
                context.router.push(
                  PreviewVideoPlayerRoute(
                    displayable: HistoryDBDataWrapper(output),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
