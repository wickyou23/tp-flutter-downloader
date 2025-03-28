import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/data/DB/drift_db.dart';
import 'package:tp_flutter_downloader/domain/repositories/histories_repo.dart';
import 'package:tp_flutter_downloader/domain/usecases/base_usecase.dart';

@injectable
class GetAllHistoriesUsecase extends BaseUseCase
    implements FutureUseCase<void, List<HistoryDBData>> {
  final HistoriesRepo<HistoryDBData> historiesRepo;

  GetAllHistoriesUsecase(this.historiesRepo);

  @override
  Future<List<HistoryDBData>> execute(void input) async {
    return await historiesRepo.getAllHistories();
  }
}
