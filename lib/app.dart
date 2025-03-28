import 'package:flutter/material.dart';
import 'package:tp_flutter_downloader/build_gen/fonts.gen.dart';
import 'package:tp_flutter_downloader/router.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
        fontFamily: FontFamily.tTNormsPro,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
