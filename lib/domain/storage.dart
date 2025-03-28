abstract interface class Storage {
  Future<void> setString(String key, dynamic value);
  Future<String?> getString(String key);

  Future<void> setMap(String key, Map<String, dynamic> value);
  Future<Map<String, dynamic>?> getMap(String key);

  Future<void> remove(String key);
}
