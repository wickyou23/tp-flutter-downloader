import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_reponse.freezed.dart';
part 'api_reponse.g.dart';

@freezed
class ApiResponse with _$ApiResponse {
  factory ApiResponse({
    @JsonKey(name: "status_code") required int statusCode,
    String? message,
    required Map<String, dynamic> data,
    required String status,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
