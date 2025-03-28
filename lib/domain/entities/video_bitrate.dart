import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_bitrate.freezed.dart';
part 'video_bitrate.g.dart';

const _videoQualityTxt = {
  "4320": "8K",
  "2160": "4K",
  "1440": "2K",
  "1080": "Full HD",
  "720": "HD",
  "576": "SD",
  "480": "SD",
  "360": "SD",
};

@freezed
class VideoBitrate with _$VideoBitrate {
  factory VideoBitrate({
    @JsonKey(name: 'bitrate_id') required String bitrateId,
    required String quality,
    required int width,
    required int height,
    @JsonKey(name: 'media_urls') required List<String> mediaUrls,
    String? bitrate,
    int? itag,
    @JsonKey(name: "mime_type", defaultValue: "video/mp4") String? mimeType,
    @JsonKey(name: "content_length") int? fileSize,
  }) = _VideoBitrate;

  factory VideoBitrate.fromJson(Map<String, dynamic> json) =>
      _$VideoBitrateFromJson(json);
}

extension VideoBitrateExt on VideoBitrate {
  String get qualityString {
    final str = min(width, height);
    return _videoQualityTxt[str.toString()] ?? "";
  }

  String get sizeString {
    final size = fileSize ?? 0;
    if (size > 1000000) {
      return '${(size / 1000000).toStringAsFixed(2)} MB';
    }

    return '${(size / 1000).toStringAsFixed(2)} KB';
  }
}
