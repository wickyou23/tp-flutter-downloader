import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_music.freezed.dart';
part 'video_music.g.dart';

@freezed
class VideoMusic with _$VideoMusic {
  factory VideoMusic({
    @JsonKey(name: "music_id") required String musicId,
    required String title,
    @JsonKey(name: "media_urls", defaultValue: [])
    required List<String> mediaUrls,
    @JsonKey(name: "cover_thumb") required String coverThumb,
    required int duration,
    @JsonKey(name: "audio_sample_rate") String? audioSampleRate,
    @JsonKey(name: "mime_type", defaultValue: "audio/mp3") String? mimeType,
    @JsonKey(name: "content_length") int? fileSize,
  }) = _VideoMusic;

  factory VideoMusic.fromJson(Map<String, dynamic> json) =>
      _$VideoMusicFromJson(json);
}
