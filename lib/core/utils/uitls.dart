import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

Future<Directory?> getDownloadDir() async {
  Directory? directory;
  try {
    if (Platform.isIOS) {
      directory = await getDownloadsDirectory();
    } else {
      directory = Directory('/storage/emulated/0/Download');
      if (!await directory.exists()) {
        directory = await getExternalStorageDirectory();
      }
    }
  } catch (err, _) {
    debugPrint("Cannot get download folder path");
    rethrow;
  }

  return directory;
}

String formatDuration(int? seconds) {
  final secs = seconds;

  if (secs == null) return '--:--';

  int hours = secs ~/ 3600;
  int minutes = (secs % 3600) ~/ 60;
  int remainingSeconds = secs % 60;

  if (hours > 0) {
    return '${hours.toString().padLeft(2, '0')}:'
        '${minutes.toString().padLeft(2, '0')}:'
        '${remainingSeconds.toString().padLeft(2, '0')}';
  } else {
    return '${minutes.toString().padLeft(2, '0')}:'
        '${remainingSeconds.toString().padLeft(2, '0')}';
  }
}
