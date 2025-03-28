abstract class BaseRequest {
  String get path;
  Map<String, dynamic> get body;
  Map<String, dynamic> get queryParameters;
  Map<String, dynamic> get headers;
}

abstract class BaseDownloadRequest extends BaseRequest {
  String get filePath;
}
