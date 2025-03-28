// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:tp_flutter_downloader/data/models/ui/preview_video_model.dart'
    as _i7;
import 'package:tp_flutter_downloader/ui/downloader/downloader.dart' as _i1;
import 'package:tp_flutter_downloader/ui/histories/histories.dart' as _i2;
import 'package:tp_flutter_downloader/ui/home/home.dart' as _i3;
import 'package:tp_flutter_downloader/ui/preview_player/preview_video_player.dart'
    as _i4;

/// generated route for
/// [_i1.DownloaderPage]
class DownloaderRoute extends _i5.PageRouteInfo<void> {
  const DownloaderRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DownloaderRoute.name,
          initialChildren: children,
        );

  static const String name = 'DownloaderRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i1.DownloaderPage();
    },
  );
}

/// generated route for
/// [_i2.HistoriesPage]
class HistoriesRoute extends _i5.PageRouteInfo<void> {
  const HistoriesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HistoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoriesRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i2.HistoriesPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.PreviewVideoPlayerPage]
class PreviewVideoPlayerRoute
    extends _i5.PageRouteInfo<PreviewVideoPlayerRouteArgs> {
  PreviewVideoPlayerRoute({
    _i6.Key? key,
    required _i7.PreviewVideoDisplayable displayable,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          PreviewVideoPlayerRoute.name,
          args: PreviewVideoPlayerRouteArgs(
            key: key,
            displayable: displayable,
          ),
          initialChildren: children,
        );

  static const String name = 'PreviewVideoPlayerRoute';

  static _i5.PageInfo page = _i5.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PreviewVideoPlayerRouteArgs>();
      return _i4.PreviewVideoPlayerPage(
        key: args.key,
        displayable: args.displayable,
      );
    },
  );
}

class PreviewVideoPlayerRouteArgs {
  const PreviewVideoPlayerRouteArgs({
    this.key,
    required this.displayable,
  });

  final _i6.Key? key;

  final _i7.PreviewVideoDisplayable displayable;

  @override
  String toString() {
    return 'PreviewVideoPlayerRouteArgs{key: $key, displayable: $displayable}';
  }
}
