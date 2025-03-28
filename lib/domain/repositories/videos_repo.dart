import 'dart:io';

import '../entities/video_response.dart';

abstract interface class VideosRepo {
  Future<VideoResponse> searchVideos(String sharedUrl);

  Future<dynamic> saveMediaFileToLocalDevice(
    File mediaFile,
    String mediaPath,
    bool isVideo,
  );

  Future<File> downloadTikVideo(
    String url,
    String mimeType,
    String fileName,
    Map<String, dynamic> tikHeader,
    Function(int, int)? onDownloading,
  );

  Future<File> downloadYTMedia(
    String sessionId,
    String mediaId,
    String mimeType,
    String fileName,
    Function(int, int)? onDownloading,
  );

  Future<File> getCacheFilePath(
    String mineType,
    String fileName,
    bool isVideo,
  );

  Future<File> downloadVideoThumbnail(
    String url,
    String fileName, {
    Map<String, dynamic> headers,
  });
}
