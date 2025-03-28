// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) {
  return _VideoResponse.fromJson(json);
}

/// @nodoc
mixin _$VideoResponse {
  @JsonKey(name: "session_id")
  String get sessionId => throw _privateConstructorUsedError;
  @JsonKey(name: "video_item")
  VideoItem get videoItem => throw _privateConstructorUsedError;
  Map<String, dynamic> get headers => throw _privateConstructorUsedError;
  @JsonKey(name: "video_source")
  VideoSource get videoSource => throw _privateConstructorUsedError;

  /// Serializes this VideoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VideoResponseCopyWith<VideoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoResponseCopyWith<$Res> {
  factory $VideoResponseCopyWith(
          VideoResponse value, $Res Function(VideoResponse) then) =
      _$VideoResponseCopyWithImpl<$Res, VideoResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "session_id") String sessionId,
      @JsonKey(name: "video_item") VideoItem videoItem,
      Map<String, dynamic> headers,
      @JsonKey(name: "video_source") VideoSource videoSource});

  $VideoItemCopyWith<$Res> get videoItem;
}

/// @nodoc
class _$VideoResponseCopyWithImpl<$Res, $Val extends VideoResponse>
    implements $VideoResponseCopyWith<$Res> {
  _$VideoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? videoItem = null,
    Object? headers = null,
    Object? videoSource = null,
  }) {
    return _then(_value.copyWith(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      videoItem: null == videoItem
          ? _value.videoItem
          : videoItem // ignore: cast_nullable_to_non_nullable
              as VideoItem,
      headers: null == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      videoSource: null == videoSource
          ? _value.videoSource
          : videoSource // ignore: cast_nullable_to_non_nullable
              as VideoSource,
    ) as $Val);
  }

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VideoItemCopyWith<$Res> get videoItem {
    return $VideoItemCopyWith<$Res>(_value.videoItem, (value) {
      return _then(_value.copyWith(videoItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$VideoResponseImplCopyWith<$Res>
    implements $VideoResponseCopyWith<$Res> {
  factory _$$VideoResponseImplCopyWith(
          _$VideoResponseImpl value, $Res Function(_$VideoResponseImpl) then) =
      __$$VideoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "session_id") String sessionId,
      @JsonKey(name: "video_item") VideoItem videoItem,
      Map<String, dynamic> headers,
      @JsonKey(name: "video_source") VideoSource videoSource});

  @override
  $VideoItemCopyWith<$Res> get videoItem;
}

/// @nodoc
class __$$VideoResponseImplCopyWithImpl<$Res>
    extends _$VideoResponseCopyWithImpl<$Res, _$VideoResponseImpl>
    implements _$$VideoResponseImplCopyWith<$Res> {
  __$$VideoResponseImplCopyWithImpl(
      _$VideoResponseImpl _value, $Res Function(_$VideoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionId = null,
    Object? videoItem = null,
    Object? headers = null,
    Object? videoSource = null,
  }) {
    return _then(_$VideoResponseImpl(
      sessionId: null == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String,
      videoItem: null == videoItem
          ? _value.videoItem
          : videoItem // ignore: cast_nullable_to_non_nullable
              as VideoItem,
      headers: null == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      videoSource: null == videoSource
          ? _value.videoSource
          : videoSource // ignore: cast_nullable_to_non_nullable
              as VideoSource,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VideoResponseImpl implements _VideoResponse {
  _$VideoResponseImpl(
      {@JsonKey(name: "session_id") required this.sessionId,
      @JsonKey(name: "video_item") required this.videoItem,
      final Map<String, dynamic> headers = const {},
      @JsonKey(name: "video_source") required this.videoSource})
      : _headers = headers;

  factory _$VideoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$VideoResponseImplFromJson(json);

  @override
  @JsonKey(name: "session_id")
  final String sessionId;
  @override
  @JsonKey(name: "video_item")
  final VideoItem videoItem;
  final Map<String, dynamic> _headers;
  @override
  @JsonKey()
  Map<String, dynamic> get headers {
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_headers);
  }

  @override
  @JsonKey(name: "video_source")
  final VideoSource videoSource;

  @override
  String toString() {
    return 'VideoResponse(sessionId: $sessionId, videoItem: $videoItem, headers: $headers, videoSource: $videoSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoResponseImpl &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId) &&
            (identical(other.videoItem, videoItem) ||
                other.videoItem == videoItem) &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.videoSource, videoSource) ||
                other.videoSource == videoSource));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sessionId, videoItem,
      const DeepCollectionEquality().hash(_headers), videoSource);

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoResponseImplCopyWith<_$VideoResponseImpl> get copyWith =>
      __$$VideoResponseImplCopyWithImpl<_$VideoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VideoResponseImplToJson(
      this,
    );
  }
}

abstract class _VideoResponse implements VideoResponse {
  factory _VideoResponse(
      {@JsonKey(name: "session_id") required final String sessionId,
      @JsonKey(name: "video_item") required final VideoItem videoItem,
      final Map<String, dynamic> headers,
      @JsonKey(name: "video_source")
      required final VideoSource videoSource}) = _$VideoResponseImpl;

  factory _VideoResponse.fromJson(Map<String, dynamic> json) =
      _$VideoResponseImpl.fromJson;

  @override
  @JsonKey(name: "session_id")
  String get sessionId;
  @override
  @JsonKey(name: "video_item")
  VideoItem get videoItem;
  @override
  Map<String, dynamic> get headers;
  @override
  @JsonKey(name: "video_source")
  VideoSource get videoSource;

  /// Create a copy of VideoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoResponseImplCopyWith<_$VideoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
