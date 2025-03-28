import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:tp_flutter_downloader/domain/storage.dart';

@lazySingleton
class SecureStorage implements Storage {
  final FlutterSecureStorage _storage = FlutterSecureStorage();

  @override
  Future<String?> getString(String key) {
    return _storage.read(key: key);
  }

  @override
  Future<void> setString(String key, value) {
    return _storage.write(key: key, value: value);
  }

  @override
  Future<void> remove(String key) {
    return _storage.delete(key: key);
  }

  @override
  Future<Map<String, dynamic>?> getMap(String key) async {
    final result = await _storage.read(key: key);

    if (result == null) return null;

    return json.decode(result) as Map<String, dynamic>;
  }

  @override
  Future<void> setMap(String key, Map<String, dynamic> value) {
    return _storage.write(key: key, value: json.encode(value));
  }
}
