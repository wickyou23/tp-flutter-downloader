import 'package:tp_flutter_downloader/core/networks/models/requests/base_request.dart';

class DownloadVideoRequest extends BaseDownloadRequest {
  final String sessionId;
  final String mediaId;
  final String mediaSource;
  final String cacheFilePath;

  DownloadVideoRequest(
    this.sessionId,
    this.mediaId,
    this.mediaSource,
    this.cacheFilePath,
  );

  @override
  Map<String, dynamic> get body => {};

  @override
  Map<String, dynamic> get headers => {
        "Connection": "Keep-Alive",
        "Accept-Encoding": "Identity",
      };

  @override
  String get path => '/video/download';

  @override
  Map<String, dynamic> get queryParameters => {
        'session_id': sessionId,
        'video_id': mediaId,
        'video_type': mediaSource,
      };

  @override
  String get filePath => cacheFilePath;
}
