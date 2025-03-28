import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_flutter_downloader/core/base/base_bloc_state.dart';

abstract class BaseCubit<S extends BaseBlocState> extends BaseCubitDelegate<S> {
  BaseCubit(super.initialState);
}

abstract class BaseCubitDelegate<S extends BaseBlocState> extends BlocBase<S> {
  BaseCubitDelegate(super.initialState);
}
