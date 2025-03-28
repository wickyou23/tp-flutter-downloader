import 'package:drift/drift.dart';
import 'package:tp_flutter_downloader/data/DB/drift_db.dart';

class HistoryDB extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get mediaId => text()();
  TextColumn get mediaPath => text()();
  TextColumn get title => text().nullable()();
  TextColumn get desc => text().nullable()();
  IntColumn get duration => integer().nullable()();
  TextColumn get thumbPath => text().nullable()();
  TextColumn get mimeType => text().nullable()();
  TextColumn get quality => text().nullable()();
  IntColumn get width => integer().nullable()();
  IntColumn get height => integer().nullable()();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}

extension HistoryDBDataExtension on HistoryDBData {
  bool get isVideo {
    if (mimeType?.contains('audio') == true) {
      return false;
    }

    return true;
  }
}
