import 'dart:io';

import 'package:tp_flutter_downloader/data/DB/drift_db.dart';
import 'package:tp_flutter_downloader/data/models/db/history_db.dart';
import 'package:tp_flutter_downloader/data/models/ui/preview_video_model.dart';

class HistoryDBDataWrapper implements PreviewVideoDisplayable {
  final HistoryDBData data;

  HistoryDBDataWrapper(this.data);

  @override
  String get desc => data.desc ?? '';

  @override
  int get durations => data.duration ?? 0;

  @override
  File get mediaFile => File(data.mediaPath);

  @override
  bool get isVideo => data.isVideo;

  @override
  String get title => data.title ?? '';

  @override
  String get mediaId => data.mediaId;

  @override
  int get id => data.id;

  @override
  File? get thumbFile => data.thumbPath == null ? null : File(data.thumbPath!);
}
