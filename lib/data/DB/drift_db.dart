import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tp_flutter_downloader/data/models/db/history_db.dart';
import 'package:tp_flutter_downloader/domain/db_connection.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'drift_db.g.dart';

@lazySingleton
@DriftDatabase(tables: [HistoryDB])
class AppDriftDatabase extends _$AppDriftDatabase
    implements DbConnection<QueryExecutor> {
  AppDriftDatabase() : super(_openConnection());

  @override
  Future<QueryExecutor> close() {
    throw UnimplementedError();
  }

  @override
  Future<QueryExecutor> open() async {
    return _openConnection();
  }

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'app_database',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
