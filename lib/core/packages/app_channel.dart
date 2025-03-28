import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppChannel {
  final MethodChannel _channel = const MethodChannel('app_channel');

  Future<void> openDowloadFolder() async {
    await _channel.invokeMethod('openDowloadFolder');
  }

  Future<void> openVideoGallery() async {
    await _channel.invokeMethod('openVideoGallery');
  }
}
