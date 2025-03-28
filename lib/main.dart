import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:tp_flutter_downloader/app.dart';
import 'package:tp_flutter_downloader/di/di.dart';
import 'package:tp_flutter_downloader/domain/usecases/get_configuration_usecase.dart';

void main() => runZonedGuarded(_runMyApp, _reportError);

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();

  await Firebase.initializeApp();

  await configApp();

  runApp(MyApp());
}

void _reportError(Object error, StackTrace stackTrace) {
  Logger().e(error, stackTrace: stackTrace);
}

Future<void> configApp() async {
  final getConfigurationUseCase = getIt<GetConfigurationUseCase>();
  await getConfigurationUseCase.execute();
}
