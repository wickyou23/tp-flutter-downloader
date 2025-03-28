import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/core/base/base_bloc_state.dart';
import 'package:tp_flutter_downloader/core/base/base_cubit.dart';
import 'package:tp_flutter_downloader/data/DB/drift_db.dart';
import 'package:tp_flutter_downloader/domain/repositories/histories_repo.dart';
import 'package:tp_flutter_downloader/domain/usecases/get_all_histories_usecase.dart';
import 'package:tp_flutter_downloader/ui/histories/bloc/histories_page_state.dart';

@injectable
class HistoriesPageCubit extends BaseCubit<HistoriesPageState>
    implements BaseBlocState {
  final GetAllHistoriesUsecase getAllHistoriesUsecase;
  final HistoriesRepo<HistoryDBData> historiesRepo;

  HistoriesPageCubit(
    this.getAllHistoriesUsecase,
    this.historiesRepo,
  ) : super(HistoriesPageState.initial(historiesRepo.histories));

  Future<void> getAllHistories() async {
    // emit(HistoriesPageState.loading());
    await getAllHistoriesUsecase.execute(null);
    // emit(HistoriesPageState.getAllHistoriesSuccess(historiesRepo.histories));
  }
}
