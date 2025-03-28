import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tp_flutter_downloader/router.gr.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        DownloaderRoute(),
        HistoriesRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.download_rounded),
                label: 'Downloader',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: 'Histories',
              ),
            ],
            currentIndex: context.tabsRouter.activeIndex,
            onTap: context.tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
