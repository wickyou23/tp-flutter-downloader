import 'package:tp_flutter_downloader/data/DB/drift_db.dart';
import 'package:tp_flutter_downloader/domain/entities/video_item.dart';

abstract interface class HistoriesRepo<T> {
  Stream<List<T>> get histories;

  Future<HistoryDBData?> saveHistories(
    VideoItem videoItem,
    String mimeType,
    String thumbPath,
    String videoPath,
    int? width,
    int? height,
    String? quality,
  );

  Future<bool> clearHistory();
  Future<bool> deleteHistory(List<T> histories);
  Future<bool> deleteHistoryById(int id);
  Future<List<T>> getAllHistories();
  Future<int> countHistoriesByMediaId(String mediaId);
}
