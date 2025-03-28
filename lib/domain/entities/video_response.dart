import 'package:freezed_annotation/freezed_annotation.dart';
import 'video_item.dart';

part 'video_response.freezed.dart';
part 'video_response.g.dart';

enum VideoSource {
  @JsonValue("TIKTOK")
  tiktok,
  @JsonValue("DOUYIN")
  douyin,
  @JsonValue("YOUTUBE")
  youtube,
}

@freezed
class VideoResponse with _$VideoResponse {
  factory VideoResponse({
    @JsonKey(name: "session_id") required String sessionId,
    @JsonKey(name: "video_item") required VideoItem videoItem,
    @Default({}) Map<String, dynamic> headers,
    @JsonKey(name: "video_source") required VideoSource videoSource,
  }) = _VideoResponse;

  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}
