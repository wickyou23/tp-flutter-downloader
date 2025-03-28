// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_music.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoMusic _$VideoMusicFromJson(Map<String, dynamic> json) {
  return _VideoMusic.fromJson(json);
}

/// @nodoc
mixin _$VideoMusic {
  @JsonKey(name: "music_id")
  String get musicId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "media_urls", defaultValue: [])
  List<String> get mediaUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "cover_thumb")
  String get coverThumb => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  @JsonKey(name: "audio_sample_rate")
  String? get audioSampleRate => throw _privateConstructorUsedError;
  @JsonKey(name: "mime_type", defaultValue: "audio/mp3")
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: "content_length")
  int? get fileSize => throw _privateConstructorUsedError;

  /// Serializes this VideoMusic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoMusic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoMusicCopyWith<VideoMusic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoMusicCopyWith<$Res> {
  factory $VideoMusicCopyWith(
          VideoMusic value, $Res Function(VideoMusic) then) =
      _$VideoMusicCopyWithImpl<$Res, VideoMusic>;
  @useResult
  $Res call(
      {@JsonKey(name: "music_id") String musicId,
      String title,
      @JsonKey(name: "media_urls", defaultValue: []) List<String> mediaUrls,
      @JsonKey(name: "cover_thumb") String coverThumb,
      int duration,
      @JsonKey(name: "audio_sample_rate") String? audioSampleRate,
      @JsonKey(name: "mime_type", defaultValue: "audio/mp3") String? mimeType,
      @JsonKey(name: "content_length") int? fileSize});
}

/// @nodoc
class _$VideoMusicCopyWithImpl<$Res, $Val extends VideoMusic>
    implements $VideoMusicCopyWith<$Res> {
  _$VideoMusicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoMusic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicId = null,
    Object? title = null,
    Object? mediaUrls = null,
    Object? coverThumb = null,
    Object? duration = null,
    Object? audioSampleRate = freezed,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_value.copyWith(
      musicId: null == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: null == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverThumb: null == coverThumb
          ? _value.coverThumb
          : coverThumb // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      audioSampleRate: freezed == audioSampleRate
          ? _value.audioSampleRate
          : audioSampleRate // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoMusicImplCopyWith<$Res>
    implements $VideoMusicCopyWith<$Res> {
  factory _$$VideoMusicImplCopyWith(
          _$VideoMusicImpl value, $Res Function(_$VideoMusicImpl) then) =
      __$$VideoMusicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "music_id") String musicId,
      String title,
      @JsonKey(name: "media_urls", defaultValue: []) List<String> mediaUrls,
      @JsonKey(name: "cover_thumb") String coverThumb,
      int duration,
      @JsonKey(name: "audio_sample_rate") String? audioSampleRate,
      @JsonKey(name: "mime_type", defaultValue: "audio/mp3") String? mimeType,
      @JsonKey(name: "content_length") int? fileSize});
}

/// @nodoc
class __$$VideoMusicImplCopyWithImpl<$Res>
    extends _$VideoMusicCopyWithImpl<$Res, _$VideoMusicImpl>
    implements _$$VideoMusicImplCopyWith<$Res> {
  __$$VideoMusicImplCopyWithImpl(
      _$VideoMusicImpl _value, $Res Function(_$VideoMusicImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoMusic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? musicId = null,
    Object? title = null,
    Object? mediaUrls = null,
    Object? coverThumb = null,
    Object? duration = null,
    Object? audioSampleRate = freezed,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_$VideoMusicImpl(
      musicId: null == musicId
          ? _value.musicId
          : musicId // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mediaUrls: null == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      coverThumb: null == coverThumb
          ? _value.coverThumb
          : coverThumb // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      audioSampleRate: freezed == audioSampleRate
          ? _value.audioSampleRate
          : audioSampleRate // ignore: cast_nullable_to_non_nullable
              as String?,
      mimeType: freezed == mimeType
          ? _value.mimeType
          : mimeType // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSize: freezed == fileSize
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoMusicImpl implements _VideoMusic {
  _$VideoMusicImpl(
      {@JsonKey(name: "music_id") required this.musicId,
      required this.title,
      @JsonKey(name: "media_urls", defaultValue: [])
      required final List<String> mediaUrls,
      @JsonKey(name: "cover_thumb") required this.coverThumb,
      required this.duration,
      @JsonKey(name: "audio_sample_rate") this.audioSampleRate,
      @JsonKey(name: "mime_type", defaultValue: "audio/mp3") this.mimeType,
      @JsonKey(name: "content_length") this.fileSize})
      : _mediaUrls = mediaUrls;

  factory _$VideoMusicImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoMusicImplFromJson(json);

  @override
  @JsonKey(name: "music_id")
  final String musicId;
  @override
  final String title;
  final List<String> _mediaUrls;
  @override
  @JsonKey(name: "media_urls", defaultValue: [])
  List<String> get mediaUrls {
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaUrls);
  }

  @override
  @JsonKey(name: "cover_thumb")
  final String coverThumb;
  @override
  final int duration;
  @override
  @JsonKey(name: "audio_sample_rate")
  final String? audioSampleRate;
  @override
  @JsonKey(name: "mime_type", defaultValue: "audio/mp3")
  final String? mimeType;
  @override
  @JsonKey(name: "content_length")
  final int? fileSize;

  @override
  String toString() {
    return 'VideoMusic(musicId: $musicId, title: $title, mediaUrls: $mediaUrls, coverThumb: $coverThumb, duration: $duration, audioSampleRate: $audioSampleRate, mimeType: $mimeType, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoMusicImpl &&
            (identical(other.musicId, musicId) || other.musicId == musicId) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            (identical(other.coverThumb, coverThumb) ||
                other.coverThumb == coverThumb) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.audioSampleRate, audioSampleRate) ||
                other.audioSampleRate == audioSampleRate) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      musicId,
      title,
      const DeepCollectionEquality().hash(_mediaUrls),
      coverThumb,
      duration,
      audioSampleRate,
      mimeType,
      fileSize);

  /// Create a copy of VideoMusic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoMusicImplCopyWith<_$VideoMusicImpl> get copyWith =>
      __$$VideoMusicImplCopyWithImpl<_$VideoMusicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoMusicImplToJson(
      this,
    );
  }
}

abstract class _VideoMusic implements VideoMusic {
  factory _VideoMusic(
      {@JsonKey(name: "music_id") required final String musicId,
      required final String title,
      @JsonKey(name: "media_urls", defaultValue: [])
      required final List<String> mediaUrls,
      @JsonKey(name: "cover_thumb") required final String coverThumb,
      required final int duration,
      @JsonKey(name: "audio_sample_rate") final String? audioSampleRate,
      @JsonKey(name: "mime_type", defaultValue: "audio/mp3")
      final String? mimeType,
      @JsonKey(name: "content_length") final int? fileSize}) = _$VideoMusicImpl;

  factory _VideoMusic.fromJson(Map<String, dynamic> json) =
      _$VideoMusicImpl.fromJson;

  @override
  @JsonKey(name: "music_id")
  String get musicId;
  @override
  String get title;
  @override
  @JsonKey(name: "media_urls", defaultValue: [])
  List<String> get mediaUrls;
  @override
  @JsonKey(name: "cover_thumb")
  String get coverThumb;
  @override
  int get duration;
  @override
  @JsonKey(name: "audio_sample_rate")
  String? get audioSampleRate;
  @override
  @JsonKey(name: "mime_type", defaultValue: "audio/mp3")
  String? get mimeType;
  @override
  @JsonKey(name: "content_length")
  int? get fileSize;

  /// Create a copy of VideoMusic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoMusicImplCopyWith<_$VideoMusicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
