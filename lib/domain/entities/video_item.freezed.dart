// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoItem _$VideoItemFromJson(Map<String, dynamic> json) {
  return _VideoItem.fromJson(json);
}

/// @nodoc
mixin _$VideoItem {
  @JsonKey(name: "video_id")
  String get videoId => throw _privateConstructorUsedError;
  String get desc => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get durations => throw _privateConstructorUsedError;
  @JsonKey(name: "video_cover")
  String get videoCover => throw _privateConstructorUsedError;
  @JsonKey(name: "bit_rates")
  List<VideoBitrate> get bitRates => throw _privateConstructorUsedError;
  List<VideoMusic> get musics => throw _privateConstructorUsedError;
  String? get expiresInSeconds => throw _privateConstructorUsedError;

  /// Serializes this VideoItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoItemCopyWith<VideoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoItemCopyWith<$Res> {
  factory $VideoItemCopyWith(VideoItem value, $Res Function(VideoItem) then) =
      _$VideoItemCopyWithImpl<$Res, VideoItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "video_id") String videoId,
      String desc,
      String title,
      int durations,
      @JsonKey(name: "video_cover") String videoCover,
      @JsonKey(name: "bit_rates") List<VideoBitrate> bitRates,
      List<VideoMusic> musics,
      String? expiresInSeconds});
}

/// @nodoc
class _$VideoItemCopyWithImpl<$Res, $Val extends VideoItem>
    implements $VideoItemCopyWith<$Res> {
  _$VideoItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? desc = null,
    Object? title = null,
    Object? durations = null,
    Object? videoCover = null,
    Object? bitRates = null,
    Object? musics = null,
    Object? expiresInSeconds = freezed,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      durations: null == durations
          ? _value.durations
          : durations // ignore: cast_nullable_to_non_nullable
              as int,
      videoCover: null == videoCover
          ? _value.videoCover
          : videoCover // ignore: cast_nullable_to_non_nullable
              as String,
      bitRates: null == bitRates
          ? _value.bitRates
          : bitRates // ignore: cast_nullable_to_non_nullable
              as List<VideoBitrate>,
      musics: null == musics
          ? _value.musics
          : musics // ignore: cast_nullable_to_non_nullable
              as List<VideoMusic>,
      expiresInSeconds: freezed == expiresInSeconds
          ? _value.expiresInSeconds
          : expiresInSeconds // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VideoItemImplCopyWith<$Res>
    implements $VideoItemCopyWith<$Res> {
  factory _$$VideoItemImplCopyWith(
          _$VideoItemImpl value, $Res Function(_$VideoItemImpl) then) =
      __$$VideoItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "video_id") String videoId,
      String desc,
      String title,
      int durations,
      @JsonKey(name: "video_cover") String videoCover,
      @JsonKey(name: "bit_rates") List<VideoBitrate> bitRates,
      List<VideoMusic> musics,
      String? expiresInSeconds});
}

/// @nodoc
class __$$VideoItemImplCopyWithImpl<$Res>
    extends _$VideoItemCopyWithImpl<$Res, _$VideoItemImpl>
    implements _$$VideoItemImplCopyWith<$Res> {
  __$$VideoItemImplCopyWithImpl(
      _$VideoItemImpl _value, $Res Function(_$VideoItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? desc = null,
    Object? title = null,
    Object? durations = null,
    Object? videoCover = null,
    Object? bitRates = null,
    Object? musics = null,
    Object? expiresInSeconds = freezed,
  }) {
    return _then(_$VideoItemImpl(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      desc: null == desc
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      durations: null == durations
          ? _value.durations
          : durations // ignore: cast_nullable_to_non_nullable
              as int,
      videoCover: null == videoCover
          ? _value.videoCover
          : videoCover // ignore: cast_nullable_to_non_nullable
              as String,
      bitRates: null == bitRates
          ? _value._bitRates
          : bitRates // ignore: cast_nullable_to_non_nullable
              as List<VideoBitrate>,
      musics: null == musics
          ? _value._musics
          : musics // ignore: cast_nullable_to_non_nullable
              as List<VideoMusic>,
      expiresInSeconds: freezed == expiresInSeconds
          ? _value.expiresInSeconds
          : expiresInSeconds // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoItemImpl implements _VideoItem {
  _$VideoItemImpl(
      {@JsonKey(name: "video_id") required this.videoId,
      required this.desc,
      required this.title,
      required this.durations,
      @JsonKey(name: "video_cover") required this.videoCover,
      @JsonKey(name: "bit_rates") required final List<VideoBitrate> bitRates,
      required final List<VideoMusic> musics,
      this.expiresInSeconds})
      : _bitRates = bitRates,
        _musics = musics;

  factory _$VideoItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoItemImplFromJson(json);

  @override
  @JsonKey(name: "video_id")
  final String videoId;
  @override
  final String desc;
  @override
  final String title;
  @override
  final int durations;
  @override
  @JsonKey(name: "video_cover")
  final String videoCover;
  final List<VideoBitrate> _bitRates;
  @override
  @JsonKey(name: "bit_rates")
  List<VideoBitrate> get bitRates {
    if (_bitRates is EqualUnmodifiableListView) return _bitRates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bitRates);
  }

  final List<VideoMusic> _musics;
  @override
  List<VideoMusic> get musics {
    if (_musics is EqualUnmodifiableListView) return _musics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_musics);
  }

  @override
  final String? expiresInSeconds;

  @override
  String toString() {
    return 'VideoItem(videoId: $videoId, desc: $desc, title: $title, durations: $durations, videoCover: $videoCover, bitRates: $bitRates, musics: $musics, expiresInSeconds: $expiresInSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoItemImpl &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.durations, durations) ||
                other.durations == durations) &&
            (identical(other.videoCover, videoCover) ||
                other.videoCover == videoCover) &&
            const DeepCollectionEquality().equals(other._bitRates, _bitRates) &&
            const DeepCollectionEquality().equals(other._musics, _musics) &&
            (identical(other.expiresInSeconds, expiresInSeconds) ||
                other.expiresInSeconds == expiresInSeconds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      videoId,
      desc,
      title,
      durations,
      videoCover,
      const DeepCollectionEquality().hash(_bitRates),
      const DeepCollectionEquality().hash(_musics),
      expiresInSeconds);

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoItemImplCopyWith<_$VideoItemImpl> get copyWith =>
      __$$VideoItemImplCopyWithImpl<_$VideoItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoItemImplToJson(
      this,
    );
  }
}

abstract class _VideoItem implements VideoItem {
  factory _VideoItem(
      {@JsonKey(name: "video_id") required final String videoId,
      required final String desc,
      required final String title,
      required final int durations,
      @JsonKey(name: "video_cover") required final String videoCover,
      @JsonKey(name: "bit_rates") required final List<VideoBitrate> bitRates,
      required final List<VideoMusic> musics,
      final String? expiresInSeconds}) = _$VideoItemImpl;

  factory _VideoItem.fromJson(Map<String, dynamic> json) =
      _$VideoItemImpl.fromJson;

  @override
  @JsonKey(name: "video_id")
  String get videoId;
  @override
  String get desc;
  @override
  String get title;
  @override
  int get durations;
  @override
  @JsonKey(name: "video_cover")
  String get videoCover;
  @override
  @JsonKey(name: "bit_rates")
  List<VideoBitrate> get bitRates;
  @override
  List<VideoMusic> get musics;
  @override
  String? get expiresInSeconds;

  /// Create a copy of VideoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoItemImplCopyWith<_$VideoItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
