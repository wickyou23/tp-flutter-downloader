import 'package:tp_flutter_downloader/core/networks/models/requests/base_request.dart';

class SearchingVideoRequest extends BaseRequest {
  final String sharedUrl;

  SearchingVideoRequest(this.sharedUrl);

  @override
  Map<String, dynamic> get body => {};

  @override
  Map<String, dynamic> get headers => {};

  @override
  String get path => "/video";

  @override
  Map<String, dynamic> get queryParameters => {"shared_url": sharedUrl};
}
