import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/data/secure_storage.dart';
import 'package:tp_flutter_downloader/domain/repositories/configuration_repo.dart';
import 'package:tp_flutter_downloader/domain/storage.dart';

@LazySingleton(as: ConfigurationRepo)
class ConfigurationRepoImpl implements ConfigurationRepo {
  final Storage secureStorage;

  Map<String, dynamic> _configuration = {};

  ConfigurationRepoImpl(SecureStorage this.secureStorage);

  @override
  Map<String, dynamic> get configuration => _configuration;

  @override
  String? get fbAppId => _configuration['tp_fb_app_id'];

  @override
  Future<Map<String, dynamic>?> getConfiguration() {
    return secureStorage.getMap('app_config');
  }

  @override
  Future<void> saveConfiguration(Map<String, dynamic> configuration) async {
    await secureStorage.setMap('app_config', configuration);
    _configuration = configuration;
  }
}
