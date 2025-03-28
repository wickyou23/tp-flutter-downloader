import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tp_flutter_downloader/core/base/base_bloc_state.dart';
import 'package:tp_flutter_downloader/data/DB/drift_db.dart';

part 'histories_page_state.freezed.dart';

@freezed
class HistoriesPageState with _$HistoriesPageState implements BaseBlocState {
  const factory HistoriesPageState.initial(
    Stream<List<HistoryDBData>> histories,
  ) = HistoriesPageInitial;

  // const factory HistoriesPageState.loading() = HistoriesPageLoading;

  // const factory HistoriesPageState.getAllHistoriesSuccess(
  //   Stream<List<HistoryDBData>> histories,
  // ) = HistoriesPageGetAllHistoriesSuccess;
}
