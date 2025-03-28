import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tp_flutter_downloader/core/base/base_cubit.dart';
import 'package:tp_flutter_downloader/di/di.dart';

abstract class BasePageCubitState<T extends StatefulWidget, B extends BaseCubit>
    extends BasePageCubitStateDelegate<T, B> {}

abstract class BasePageCubitStateDelegate<T extends StatefulWidget,
        B extends BaseCubit> extends State<T>
    with WidgetsBindingObserver, AppLifeCycleHandler {
  late final B bloc = buildBloc();

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _onAppLifecycleStateHandler(state);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => bloc),
      ],
      child: Stack(
        children: [
          buildPage(context),
        ],
      ),
    );
  }

  B buildBloc() => getIt<B>();

  Widget buildPageLoading() => const Center(
        child: CircularProgressIndicator(),
      );

  Widget buildPage(BuildContext context);

  void _onAppLifecycleStateHandler(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.detached:
        onAppDetached();
      case AppLifecycleState.hidden:
        onAppHidden();
      case AppLifecycleState.paused:
        onAppPaused();
      case AppLifecycleState.inactive:
        onAppInactive();
      case AppLifecycleState.resumed:
        onAppResumed();
    }
  }
}

mixin AppLifeCycleHandler {
  void onAppDetached() {}
  void onAppResumed() {}
  void onAppInactive() {}
  void onAppHidden() {}
  void onAppPaused() {}
}
