import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

import 'video_bitrate.dart';
import 'video_music.dart';

part 'video_item.freezed.dart';
part 'video_item.g.dart';

@freezed
class VideoItem with _$VideoItem {
  factory VideoItem({
    @JsonKey(name: "video_id") required String videoId,
    required String desc,
    required String title,
    required int durations,
    @JsonKey(name: "video_cover") required String videoCover,
    @JsonKey(name: "bit_rates") required List<VideoBitrate> bitRates,
    required List<VideoMusic> musics,
    String? expiresInSeconds,
  }) = _VideoItem;

  factory VideoItem.fromJson(Map<String, dynamic> json) =>
      _$VideoItemFromJson(json);
}

extension VideoItemExtension on VideoItem {
  String get fileName {
    String nameOrId = videoId;
    if (title.isNotEmpty) {
      nameOrId = title.substring(0, min(title.length, 128));
      nameOrId = nameOrId.replaceAll(' ', '_');
      nameOrId += '_$videoId';
    }

    return nameOrId;
  }

  String get titleOrDecs {
    if (title.isNotEmpty) {
      return title;
    } else {
      return desc;
    }
  }
}
