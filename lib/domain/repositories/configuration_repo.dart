abstract interface class ConfigurationRepo {
  Map<String, dynamic> get configuration;
  String? get fbAppId;

  Future<Map<String, dynamic>?> getConfiguration();
  Future<void> saveConfiguration(Map<String, dynamic> configuration);
}
