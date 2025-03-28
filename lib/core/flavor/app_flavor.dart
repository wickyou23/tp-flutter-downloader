import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/core/flavor/constant.dart';
import 'package:tp_flutter_downloader/core/flavor/flavor.dart';

@lazySingleton
class AppFlavor {
  late final Flavor _flavor;

  @PostConstruct()
  void init() {
    final String env = const String.fromEnvironment(
      'FLAVOR',
      defaultValue: 'dev',
    );

    _flavor = flavorConfigs[FlavorType.fromString(env)]!;
  }

  String get baseUrl => _flavor.baseUrl;
}
