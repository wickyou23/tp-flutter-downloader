import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_flutter_downloader/core/base/base_page_cubit_state.dart';
import 'package:tp_flutter_downloader/core/utils/uitls.dart';
import 'package:tp_flutter_downloader/data/DB/drift_db.dart';
import 'package:tp_flutter_downloader/data/models/db/history_db.dart';
import 'package:tp_flutter_downloader/data/models/db/history_db_wrapper.dart';
import 'package:tp_flutter_downloader/router.gr.dart';
import 'package:tp_flutter_downloader/ui/histories/bloc/histories_page_cubit.dart';
import 'package:tp_flutter_downloader/ui/histories/bloc/histories_page_state.dart';

@RoutePage()
class HistoriesPage extends StatefulWidget {
  const HistoriesPage({super.key});

  @override
  State<HistoriesPage> createState() => _HistoriesPageState();
}

class _HistoriesPageState
    extends BasePageCubitState<HistoriesPage, HistoriesPageCubit> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => bloc.getAllHistories(),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.history_rounded,
              size: 24,
            ),
            SizedBox(width: 8),
            Text(
              'Histories',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: BlocBuilder<HistoriesPageCubit, HistoriesPageState>(
        builder: (context, state) {
          if (state is HistoriesPageInitial) {
            return StreamBuilder(
              stream: state.histories,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                final histories = snapshot.data!;
                final size = MediaQuery.of(context).size;
                final cellWith = (size.width - (8 * 3)) / 2;
                final cellHeight = 270;

                return GridView.builder(
                  padding: EdgeInsets.all(8.0),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: cellWith / cellHeight,
                  ),
                  itemBuilder: (context, index) {
                    final item = histories[index];
                    if (item.thumbPath == null) {
                      return ColoredBox(color: Colors.grey);
                    }

                    return GestureDetector(
                      onTap: () {
                        context.router.push(
                          PreviewVideoPlayerRoute(
                            displayable: HistoryDBDataWrapper(item),
                          ),
                        );
                      },
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey[400]!,
                              offset: Offset(0, 1),
                              blurRadius: 2,
                            )
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Image.file(
                                File(item.thumbPath!),
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(height: 4),
                            Container(
                              padding: EdgeInsets.all(4),
                              height: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    item.title ?? item.desc ?? '',
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                  SizedBox(height: 6),
                                  Spacer(),
                                  Row(
                                    children: [
                                      Wrap(
                                        spacing: 4.0,
                                        runSpacing: 4.0,
                                        children: [
                                          if (item.quality != null &&
                                              item.quality?.isNotEmpty == true)
                                            _buildTagContent(item.quality!),
                                          if (item.height != null)
                                            _buildTagContent(
                                              item.height.toString(),
                                            ),
                                          if (!item.isVideo)
                                            _buildTagContent('Audio'),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        formatDuration(item.duration),
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 4)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  itemCount: histories.length,
                );
              },
            );
          }

          return Container();
        },
      ),
    );
  }

  Widget _buildTagContent(String tag) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.black,
        ),
        child: Text(
          tag,
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
}
