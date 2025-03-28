import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/domain/repositories/configuration_repo.dart';
import 'package:tp_flutter_downloader/domain/usecases/base_usecase.dart';

@injectable
class GetConfigurationUseCase extends BaseUseCase
    implements FutureUseCase<void, Map<String, dynamic>?> {
  final ConfigurationRepo configRepo;

  GetConfigurationUseCase(this.configRepo);

  @override
  Future<Map<String, dynamic>?> execute([void input]) async {
    final instance = FirebaseRemoteConfig.instance;

    await instance.fetchAndActivate();

    final allConfig = instance.getAll().map(
          (key, value) => MapEntry(
            key,
            value.asString(),
          ),
        );

    await configRepo.saveConfiguration(allConfig);

    return allConfig;
  }
}
