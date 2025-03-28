import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/data/DB/drift_db.dart';
import 'package:tp_flutter_downloader/domain/repositories/histories_repo.dart';
import 'package:tp_flutter_downloader/domain/usecases/base_usecase.dart';

class DeleteHistoryUsecaseInput {
  final int id;
  final String mediaId;
  final String? thumbPath;
  final String mediaPath;

  DeleteHistoryUsecaseInput({
    required this.id,
    required this.mediaId,
    required this.thumbPath,
    required this.mediaPath,
  });
}

@injectable
class DeleteHistoryUsecase extends BaseUseCase
    implements FutureUseCase<DeleteHistoryUsecaseInput, bool> {
  final HistoriesRepo<HistoryDBData> historiesRepo;

  DeleteHistoryUsecase(this.historiesRepo);

  @override
  Future<bool> execute(DeleteHistoryUsecaseInput input) async {
    final isDeleted = await historiesRepo.deleteHistoryById(input.id);
    if (isDeleted) {
      final count = await historiesRepo.countHistoriesByMediaId(input.mediaId);
      if (count == 0) {
        final thumbPath = input.thumbPath;
        if (thumbPath != null) {
          final thumbFile = File(thumbPath);
          thumbFile.deleteSync();
        }
      }

      final mediaFile = File(input.mediaPath);
      mediaFile.deleteSync();
      return isDeleted;
    } else {
      throw Exception('Failed to delete history');
    }
  }
}
