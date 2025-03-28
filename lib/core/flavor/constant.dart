import 'package:tp_flutter_downloader/core/flavor/flavor.dart';

const flavorConfigs = {
  FlavorType.dev: Flavor(
    type: FlavorType.dev,
    baseUrl: 'http://10.0.2.2:8000',
  ),
  FlavorType.prod: Flavor(
    type: FlavorType.prod,
    baseUrl: 'http://10.0.2.2:8000',
  ),
};
