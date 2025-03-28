import 'package:auto_route/auto_route.dart';
import 'package:tp_flutter_downloader/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          initial: true,
          children: [
            AutoRoute(page: DownloaderRoute.page),
            AutoRoute(page: HistoriesRoute.page),
          ],
        ),
        AutoRoute(page: PreviewVideoPlayerRoute.page),
      ];
}
