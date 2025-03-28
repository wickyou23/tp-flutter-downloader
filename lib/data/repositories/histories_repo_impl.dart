import 'dart:async';

import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/data/DB/drift_db.dart';
import 'package:tp_flutter_downloader/domain/entities/video_item.dart';
import 'package:tp_flutter_downloader/domain/repositories/histories_repo.dart';

@LazySingleton(as: HistoriesRepo)
class HistoriesRepoImpl implements HistoriesRepo<HistoryDBData> {
  final AppDriftDatabase db;

  List<HistoryDBData> _histories = [];
  final _streamController = StreamController<List<HistoryDBData>>.broadcast();

  HistoriesRepoImpl(this.db);

  @override
  Stream<List<HistoryDBData>> get histories => _streamController.stream;

  @override
  Future<bool> clearHistory() {
    throw UnimplementedError();
  }

  @override
  Future<bool> deleteHistory(List<HistoryDBData> histories) {
    throw UnimplementedError();
  }

  @override
  Future<List<HistoryDBData>> getAllHistories() async {
    final query = db.select(db.historyDB)
      ..orderBy([(t) => OrderingTerm.desc(t.createdAt)]);
    _histories = await query.get();
    _streamController.add(List.from(_histories));
    return _histories;
  }

  @override
  Future<HistoryDBData?> saveHistories(
    VideoItem item,
    String mimeType,
    String thumbPath,
    String videoPath,
    int? width,
    int? height,
    String? quality,
  ) async {
    final companion = HistoryDBCompanion(
      mediaId: Value(item.videoId),
      title: Value(item.title),
      desc: Value(item.desc),
      thumbPath: Value(thumbPath),
      mediaPath: Value(videoPath),
      duration: Value(item.durations),
      mimeType: Value(mimeType),
      quality: Value(quality),
      width: Value(width),
      height: Value(height),
      updatedAt: Value(DateTime.now()),
    );

    final existedItem = await (db.select(db.historyDB)
          ..where(
            (t) =>
                t.mediaId.equals(item.videoId) &
                t.width.equals(width ?? 0) &
                t.height.equals(height ?? 0),
          ))
        .getSingleOrNull();

    int newId;
    if (existedItem != null) {
      newId = await (db.update(db.historyDB)
            ..where(
              (t) => t.id.equals(existedItem.id),
            ))
          .write(companion);
    } else {
      newId = await db.into(db.historyDB).insert(companion);
    }

    final newItem = await (db.select(db.historyDB)
          ..where(
            (t) => t.id.equals(newId),
          ))
        .getSingleOrNull();

    if (newItem == null) {
      return null;
    }

    _histories.insert(0, newItem);
    _streamController.add(List.from(_histories));
    return newItem;
  }

  @override
  Future<bool> deleteHistoryById(int id) async {
    await (db.delete(db.historyDB)
          ..where(
            (t) {
              return t.id.equals(id);
            },
          ))
        .go();

    _histories.removeWhere((item) {
      return id == item.id;
    });

    _streamController.add(List.from(_histories));
    return true;
  }

  @override
  Future<int> countHistoriesByMediaId(String mediaId) async {
    final countExpression = db.historyDB.id.count(
      filter: db.historyDB.mediaId.equals(mediaId),
    );

    final query = db.selectOnly(db.historyDB)..addColumns([countExpression]);
    final count = await query
        .map(
          (row) => row.read(countExpression),
        )
        .getSingle();

    if (count == null) return -1;

    return count;
  }
}
