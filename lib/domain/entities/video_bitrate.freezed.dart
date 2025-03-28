// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_bitrate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoBitrate _$VideoBitrateFromJson(Map<String, dynamic> json) {
  return _VideoBitrate.fromJson(json);
}

/// @nodoc
mixin _$VideoBitrate {
  @JsonKey(name: 'bitrate_id')
  String get bitrateId => throw _privateConstructorUsedError;
  String get quality => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'media_urls')
  List<String> get mediaUrls => throw _privateConstructorUsedError;
  String? get bitrate => throw _privateConstructorUsedError;
  int? get itag => throw _privateConstructorUsedError;
  @JsonKey(name: "mime_type", defaultValue: "video/mp4")
  String? get mimeType => throw _privateConstructorUsedError;
  @JsonKey(name: "content_length")
  int? get fileSize => throw _privateConstructorUsedError;

  /// Serializes this VideoBitrate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoBitrate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoBitrateCopyWith<VideoBitrate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoBitrateCopyWith<$Res> {
  factory $VideoBitrateCopyWith(
          VideoBitrate value, $Res Function(VideoBitrate) then) =
      _$VideoBitrateCopyWithImpl<$Res, VideoBitrate>;
  @useResult
  $Res call(
      {@JsonKey(name: 'bitrate_id') String bitrateId,
      String quality,
      int width,
      int height,
      @JsonKey(name: 'media_urls') List<String> mediaUrls,
      String? bitrate,
      int? itag,
      @JsonKey(name: "mime_type", defaultValue: "video/mp4") String? mimeType,
      @JsonKey(name: "content_length") int? fileSize});
}

/// @nodoc
class _$VideoBitrateCopyWithImpl<$Res, $Val extends VideoBitrate>
    implements $VideoBitrateCopyWith<$Res> {
  _$VideoBitrateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoBitrate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitrateId = null,
    Object? quality = null,
    Object? width = null,
    Object? height = null,
    Object? mediaUrls = null,
    Object? bitrate = freezed,
    Object? itag = freezed,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_value.copyWith(
      bitrateId: null == bitrateId
          ? _value.bitrateId
          : bitrateId // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      mediaUrls: null == mediaUrls
          ? _value.mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as String?,
      itag: freezed == itag
          ? _value.itag
          : itag // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$VideoBitrateImplCopyWith<$Res>
    implements $VideoBitrateCopyWith<$Res> {
  factory _$$VideoBitrateImplCopyWith(
          _$VideoBitrateImpl value, $Res Function(_$VideoBitrateImpl) then) =
      __$$VideoBitrateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'bitrate_id') String bitrateId,
      String quality,
      int width,
      int height,
      @JsonKey(name: 'media_urls') List<String> mediaUrls,
      String? bitrate,
      int? itag,
      @JsonKey(name: "mime_type", defaultValue: "video/mp4") String? mimeType,
      @JsonKey(name: "content_length") int? fileSize});
}

/// @nodoc
class __$$VideoBitrateImplCopyWithImpl<$Res>
    extends _$VideoBitrateCopyWithImpl<$Res, _$VideoBitrateImpl>
    implements _$$VideoBitrateImplCopyWith<$Res> {
  __$$VideoBitrateImplCopyWithImpl(
      _$VideoBitrateImpl _value, $Res Function(_$VideoBitrateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoBitrate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bitrateId = null,
    Object? quality = null,
    Object? width = null,
    Object? height = null,
    Object? mediaUrls = null,
    Object? bitrate = freezed,
    Object? itag = freezed,
    Object? mimeType = freezed,
    Object? fileSize = freezed,
  }) {
    return _then(_$VideoBitrateImpl(
      bitrateId: null == bitrateId
          ? _value.bitrateId
          : bitrateId // ignore: cast_nullable_to_non_nullable
              as String,
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      mediaUrls: null == mediaUrls
          ? _value._mediaUrls
          : mediaUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bitrate: freezed == bitrate
          ? _value.bitrate
          : bitrate // ignore: cast_nullable_to_non_nullable
              as String?,
      itag: freezed == itag
          ? _value.itag
          : itag // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$VideoBitrateImpl implements _VideoBitrate {
  _$VideoBitrateImpl(
      {@JsonKey(name: 'bitrate_id') required this.bitrateId,
      required this.quality,
      required this.width,
      required this.height,
      @JsonKey(name: 'media_urls') required final List<String> mediaUrls,
      this.bitrate,
      this.itag,
      @JsonKey(name: "mime_type", defaultValue: "video/mp4") this.mimeType,
      @JsonKey(name: "content_length") this.fileSize})
      : _mediaUrls = mediaUrls;

  factory _$VideoBitrateImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoBitrateImplFromJson(json);

  @override
  @JsonKey(name: 'bitrate_id')
  final String bitrateId;
  @override
  final String quality;
  @override
  final int width;
  @override
  final int height;
  final List<String> _mediaUrls;
  @override
  @JsonKey(name: 'media_urls')
  List<String> get mediaUrls {
    if (_mediaUrls is EqualUnmodifiableListView) return _mediaUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediaUrls);
  }

  @override
  final String? bitrate;
  @override
  final int? itag;
  @override
  @JsonKey(name: "mime_type", defaultValue: "video/mp4")
  final String? mimeType;
  @override
  @JsonKey(name: "content_length")
  final int? fileSize;

  @override
  String toString() {
    return 'VideoBitrate(bitrateId: $bitrateId, quality: $quality, width: $width, height: $height, mediaUrls: $mediaUrls, bitrate: $bitrate, itag: $itag, mimeType: $mimeType, fileSize: $fileSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoBitrateImpl &&
            (identical(other.bitrateId, bitrateId) ||
                other.bitrateId == bitrateId) &&
            (identical(other.quality, quality) || other.quality == quality) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality()
                .equals(other._mediaUrls, _mediaUrls) &&
            (identical(other.bitrate, bitrate) || other.bitrate == bitrate) &&
            (identical(other.itag, itag) || other.itag == itag) &&
            (identical(other.mimeType, mimeType) ||
                other.mimeType == mimeType) &&
            (identical(other.fileSize, fileSize) ||
                other.fileSize == fileSize));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      bitrateId,
      quality,
      width,
      height,
      const DeepCollectionEquality().hash(_mediaUrls),
      bitrate,
      itag,
      mimeType,
      fileSize);

  /// Create a copy of VideoBitrate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoBitrateImplCopyWith<_$VideoBitrateImpl> get copyWith =>
      __$$VideoBitrateImplCopyWithImpl<_$VideoBitrateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoBitrateImplToJson(
      this,
    );
  }
}

abstract class _VideoBitrate implements VideoBitrate {
  factory _VideoBitrate(
          {@JsonKey(name: 'bitrate_id') required final String bitrateId,
          required final String quality,
          required final int width,
          required final int height,
          @JsonKey(name: 'media_urls') required final List<String> mediaUrls,
          final String? bitrate,
          final int? itag,
          @JsonKey(name: "mime_type", defaultValue: "video/mp4")
          final String? mimeType,
          @JsonKey(name: "content_length") final int? fileSize}) =
      _$VideoBitrateImpl;

  factory _VideoBitrate.fromJson(Map<String, dynamic> json) =
      _$VideoBitrateImpl.fromJson;

  @override
  @JsonKey(name: 'bitrate_id')
  String get bitrateId;
  @override
  String get quality;
  @override
  int get width;
  @override
  int get height;
  @override
  @JsonKey(name: 'media_urls')
  List<String> get mediaUrls;
  @override
  String? get bitrate;
  @override
  int? get itag;
  @override
  @JsonKey(name: "mime_type", defaultValue: "video/mp4")
  String? get mimeType;
  @override
  @JsonKey(name: "content_length")
  int? get fileSize;

  /// Create a copy of VideoBitrate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoBitrateImplCopyWith<_$VideoBitrateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
