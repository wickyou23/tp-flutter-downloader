// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'preview_video_player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PreviewPlayerPageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file, bool isVideo) initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isSuccess, File? file, bool isVideo)
        savingSuccess,
    required TResult Function(File file, bool isVideo, bool isPlay,
            Duration position, Duration total)
        playVideo,
    required TResult Function() deleteVideoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file, bool isVideo)? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult? Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult? Function()? deleteVideoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file, bool isVideo)? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult Function()? deleteVideoSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviewPlayerPageInitial value) initial,
    required TResult Function(PreviewPlayerPageLoading value) loading,
    required TResult Function(PreviewPlayerPageError value) error,
    required TResult Function(PreviewPlayerPageSavingSuccess value)
        savingSuccess,
    required TResult Function(PreviewPlayerPagePlayVideo value) playVideo,
    required TResult Function(PreviewPlayerPageDeleteVideoSuccess value)
        deleteVideoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewPlayerPageInitial value)? initial,
    TResult? Function(PreviewPlayerPageLoading value)? loading,
    TResult? Function(PreviewPlayerPageError value)? error,
    TResult? Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult? Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult? Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewPlayerPageInitial value)? initial,
    TResult Function(PreviewPlayerPageLoading value)? loading,
    TResult Function(PreviewPlayerPageError value)? error,
    TResult Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreviewPlayerPageStateCopyWith<$Res> {
  factory $PreviewPlayerPageStateCopyWith(PreviewPlayerPageState value,
          $Res Function(PreviewPlayerPageState) then) =
      _$PreviewPlayerPageStateCopyWithImpl<$Res, PreviewPlayerPageState>;
}

/// @nodoc
class _$PreviewPlayerPageStateCopyWithImpl<$Res,
        $Val extends PreviewPlayerPageState>
    implements $PreviewPlayerPageStateCopyWith<$Res> {
  _$PreviewPlayerPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PreviewPlayerPageInitialImplCopyWith<$Res> {
  factory _$$PreviewPlayerPageInitialImplCopyWith(
          _$PreviewPlayerPageInitialImpl value,
          $Res Function(_$PreviewPlayerPageInitialImpl) then) =
      __$$PreviewPlayerPageInitialImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File file, bool isVideo});
}

/// @nodoc
class __$$PreviewPlayerPageInitialImplCopyWithImpl<$Res>
    extends _$PreviewPlayerPageStateCopyWithImpl<$Res,
        _$PreviewPlayerPageInitialImpl>
    implements _$$PreviewPlayerPageInitialImplCopyWith<$Res> {
  __$$PreviewPlayerPageInitialImplCopyWithImpl(
      _$PreviewPlayerPageInitialImpl _value,
      $Res Function(_$PreviewPlayerPageInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? isVideo = null,
  }) {
    return _then(_$PreviewPlayerPageInitialImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PreviewPlayerPageInitialImpl implements PreviewPlayerPageInitial {
  const _$PreviewPlayerPageInitialImpl(this.file, this.isVideo);

  @override
  final File file;
  @override
  final bool isVideo;

  @override
  String toString() {
    return 'PreviewPlayerPageState.initial(file: $file, isVideo: $isVideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewPlayerPageInitialImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, file, isVideo);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewPlayerPageInitialImplCopyWith<_$PreviewPlayerPageInitialImpl>
      get copyWith => __$$PreviewPlayerPageInitialImplCopyWithImpl<
          _$PreviewPlayerPageInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file, bool isVideo) initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isSuccess, File? file, bool isVideo)
        savingSuccess,
    required TResult Function(File file, bool isVideo, bool isPlay,
            Duration position, Duration total)
        playVideo,
    required TResult Function() deleteVideoSuccess,
  }) {
    return initial(file, isVideo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file, bool isVideo)? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult? Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult? Function()? deleteVideoSuccess,
  }) {
    return initial?.call(file, isVideo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file, bool isVideo)? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult Function()? deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(file, isVideo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviewPlayerPageInitial value) initial,
    required TResult Function(PreviewPlayerPageLoading value) loading,
    required TResult Function(PreviewPlayerPageError value) error,
    required TResult Function(PreviewPlayerPageSavingSuccess value)
        savingSuccess,
    required TResult Function(PreviewPlayerPagePlayVideo value) playVideo,
    required TResult Function(PreviewPlayerPageDeleteVideoSuccess value)
        deleteVideoSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewPlayerPageInitial value)? initial,
    TResult? Function(PreviewPlayerPageLoading value)? loading,
    TResult? Function(PreviewPlayerPageError value)? error,
    TResult? Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult? Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult? Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewPlayerPageInitial value)? initial,
    TResult Function(PreviewPlayerPageLoading value)? loading,
    TResult Function(PreviewPlayerPageError value)? error,
    TResult Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PreviewPlayerPageInitial implements PreviewPlayerPageState {
  const factory PreviewPlayerPageInitial(final File file, final bool isVideo) =
      _$PreviewPlayerPageInitialImpl;

  File get file;
  bool get isVideo;

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewPlayerPageInitialImplCopyWith<_$PreviewPlayerPageInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreviewPlayerPageLoadingImplCopyWith<$Res> {
  factory _$$PreviewPlayerPageLoadingImplCopyWith(
          _$PreviewPlayerPageLoadingImpl value,
          $Res Function(_$PreviewPlayerPageLoadingImpl) then) =
      __$$PreviewPlayerPageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviewPlayerPageLoadingImplCopyWithImpl<$Res>
    extends _$PreviewPlayerPageStateCopyWithImpl<$Res,
        _$PreviewPlayerPageLoadingImpl>
    implements _$$PreviewPlayerPageLoadingImplCopyWith<$Res> {
  __$$PreviewPlayerPageLoadingImplCopyWithImpl(
      _$PreviewPlayerPageLoadingImpl _value,
      $Res Function(_$PreviewPlayerPageLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreviewPlayerPageLoadingImpl implements PreviewPlayerPageLoading {
  const _$PreviewPlayerPageLoadingImpl();

  @override
  String toString() {
    return 'PreviewPlayerPageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewPlayerPageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file, bool isVideo) initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isSuccess, File? file, bool isVideo)
        savingSuccess,
    required TResult Function(File file, bool isVideo, bool isPlay,
            Duration position, Duration total)
        playVideo,
    required TResult Function() deleteVideoSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file, bool isVideo)? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult? Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult? Function()? deleteVideoSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file, bool isVideo)? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult Function()? deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviewPlayerPageInitial value) initial,
    required TResult Function(PreviewPlayerPageLoading value) loading,
    required TResult Function(PreviewPlayerPageError value) error,
    required TResult Function(PreviewPlayerPageSavingSuccess value)
        savingSuccess,
    required TResult Function(PreviewPlayerPagePlayVideo value) playVideo,
    required TResult Function(PreviewPlayerPageDeleteVideoSuccess value)
        deleteVideoSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewPlayerPageInitial value)? initial,
    TResult? Function(PreviewPlayerPageLoading value)? loading,
    TResult? Function(PreviewPlayerPageError value)? error,
    TResult? Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult? Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult? Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewPlayerPageInitial value)? initial,
    TResult Function(PreviewPlayerPageLoading value)? loading,
    TResult Function(PreviewPlayerPageError value)? error,
    TResult Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PreviewPlayerPageLoading implements PreviewPlayerPageState {
  const factory PreviewPlayerPageLoading() = _$PreviewPlayerPageLoadingImpl;
}

/// @nodoc
abstract class _$$PreviewPlayerPageErrorImplCopyWith<$Res> {
  factory _$$PreviewPlayerPageErrorImplCopyWith(
          _$PreviewPlayerPageErrorImpl value,
          $Res Function(_$PreviewPlayerPageErrorImpl) then) =
      __$$PreviewPlayerPageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PreviewPlayerPageErrorImplCopyWithImpl<$Res>
    extends _$PreviewPlayerPageStateCopyWithImpl<$Res,
        _$PreviewPlayerPageErrorImpl>
    implements _$$PreviewPlayerPageErrorImplCopyWith<$Res> {
  __$$PreviewPlayerPageErrorImplCopyWithImpl(
      _$PreviewPlayerPageErrorImpl _value,
      $Res Function(_$PreviewPlayerPageErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PreviewPlayerPageErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PreviewPlayerPageErrorImpl implements PreviewPlayerPageError {
  const _$PreviewPlayerPageErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'PreviewPlayerPageState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewPlayerPageErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewPlayerPageErrorImplCopyWith<_$PreviewPlayerPageErrorImpl>
      get copyWith => __$$PreviewPlayerPageErrorImplCopyWithImpl<
          _$PreviewPlayerPageErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file, bool isVideo) initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isSuccess, File? file, bool isVideo)
        savingSuccess,
    required TResult Function(File file, bool isVideo, bool isPlay,
            Duration position, Duration total)
        playVideo,
    required TResult Function() deleteVideoSuccess,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file, bool isVideo)? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult? Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult? Function()? deleteVideoSuccess,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file, bool isVideo)? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult Function()? deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviewPlayerPageInitial value) initial,
    required TResult Function(PreviewPlayerPageLoading value) loading,
    required TResult Function(PreviewPlayerPageError value) error,
    required TResult Function(PreviewPlayerPageSavingSuccess value)
        savingSuccess,
    required TResult Function(PreviewPlayerPagePlayVideo value) playVideo,
    required TResult Function(PreviewPlayerPageDeleteVideoSuccess value)
        deleteVideoSuccess,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewPlayerPageInitial value)? initial,
    TResult? Function(PreviewPlayerPageLoading value)? loading,
    TResult? Function(PreviewPlayerPageError value)? error,
    TResult? Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult? Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult? Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewPlayerPageInitial value)? initial,
    TResult Function(PreviewPlayerPageLoading value)? loading,
    TResult Function(PreviewPlayerPageError value)? error,
    TResult Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PreviewPlayerPageError implements PreviewPlayerPageState {
  const factory PreviewPlayerPageError(final String message) =
      _$PreviewPlayerPageErrorImpl;

  String get message;

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewPlayerPageErrorImplCopyWith<_$PreviewPlayerPageErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreviewPlayerPageSavingSuccessImplCopyWith<$Res> {
  factory _$$PreviewPlayerPageSavingSuccessImplCopyWith(
          _$PreviewPlayerPageSavingSuccessImpl value,
          $Res Function(_$PreviewPlayerPageSavingSuccessImpl) then) =
      __$$PreviewPlayerPageSavingSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSuccess, File? file, bool isVideo});
}

/// @nodoc
class __$$PreviewPlayerPageSavingSuccessImplCopyWithImpl<$Res>
    extends _$PreviewPlayerPageStateCopyWithImpl<$Res,
        _$PreviewPlayerPageSavingSuccessImpl>
    implements _$$PreviewPlayerPageSavingSuccessImplCopyWith<$Res> {
  __$$PreviewPlayerPageSavingSuccessImplCopyWithImpl(
      _$PreviewPlayerPageSavingSuccessImpl _value,
      $Res Function(_$PreviewPlayerPageSavingSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSuccess = null,
    Object? file = freezed,
    Object? isVideo = null,
  }) {
    return _then(_$PreviewPlayerPageSavingSuccessImpl(
      null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File?,
      null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PreviewPlayerPageSavingSuccessImpl
    implements PreviewPlayerPageSavingSuccess {
  const _$PreviewPlayerPageSavingSuccessImpl(
      this.isSuccess, this.file, this.isVideo);

  @override
  final bool isSuccess;
  @override
  final File? file;
  @override
  final bool isVideo;

  @override
  String toString() {
    return 'PreviewPlayerPageState.savingSuccess(isSuccess: $isSuccess, file: $file, isVideo: $isVideo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewPlayerPageSavingSuccessImpl &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSuccess, file, isVideo);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewPlayerPageSavingSuccessImplCopyWith<
          _$PreviewPlayerPageSavingSuccessImpl>
      get copyWith => __$$PreviewPlayerPageSavingSuccessImplCopyWithImpl<
          _$PreviewPlayerPageSavingSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file, bool isVideo) initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isSuccess, File? file, bool isVideo)
        savingSuccess,
    required TResult Function(File file, bool isVideo, bool isPlay,
            Duration position, Duration total)
        playVideo,
    required TResult Function() deleteVideoSuccess,
  }) {
    return savingSuccess(isSuccess, file, isVideo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file, bool isVideo)? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult? Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult? Function()? deleteVideoSuccess,
  }) {
    return savingSuccess?.call(isSuccess, file, isVideo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file, bool isVideo)? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult Function()? deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (savingSuccess != null) {
      return savingSuccess(isSuccess, file, isVideo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviewPlayerPageInitial value) initial,
    required TResult Function(PreviewPlayerPageLoading value) loading,
    required TResult Function(PreviewPlayerPageError value) error,
    required TResult Function(PreviewPlayerPageSavingSuccess value)
        savingSuccess,
    required TResult Function(PreviewPlayerPagePlayVideo value) playVideo,
    required TResult Function(PreviewPlayerPageDeleteVideoSuccess value)
        deleteVideoSuccess,
  }) {
    return savingSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewPlayerPageInitial value)? initial,
    TResult? Function(PreviewPlayerPageLoading value)? loading,
    TResult? Function(PreviewPlayerPageError value)? error,
    TResult? Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult? Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult? Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
  }) {
    return savingSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewPlayerPageInitial value)? initial,
    TResult Function(PreviewPlayerPageLoading value)? loading,
    TResult Function(PreviewPlayerPageError value)? error,
    TResult Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (savingSuccess != null) {
      return savingSuccess(this);
    }
    return orElse();
  }
}

abstract class PreviewPlayerPageSavingSuccess
    implements PreviewPlayerPageState {
  const factory PreviewPlayerPageSavingSuccess(
          final bool isSuccess, final File? file, final bool isVideo) =
      _$PreviewPlayerPageSavingSuccessImpl;

  bool get isSuccess;
  File? get file;
  bool get isVideo;

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewPlayerPageSavingSuccessImplCopyWith<
          _$PreviewPlayerPageSavingSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreviewPlayerPagePlayVideoImplCopyWith<$Res> {
  factory _$$PreviewPlayerPagePlayVideoImplCopyWith(
          _$PreviewPlayerPagePlayVideoImpl value,
          $Res Function(_$PreviewPlayerPagePlayVideoImpl) then) =
      __$$PreviewPlayerPagePlayVideoImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {File file,
      bool isVideo,
      bool isPlay,
      Duration position,
      Duration total});
}

/// @nodoc
class __$$PreviewPlayerPagePlayVideoImplCopyWithImpl<$Res>
    extends _$PreviewPlayerPageStateCopyWithImpl<$Res,
        _$PreviewPlayerPagePlayVideoImpl>
    implements _$$PreviewPlayerPagePlayVideoImplCopyWith<$Res> {
  __$$PreviewPlayerPagePlayVideoImplCopyWithImpl(
      _$PreviewPlayerPagePlayVideoImpl _value,
      $Res Function(_$PreviewPlayerPagePlayVideoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
    Object? isVideo = null,
    Object? isPlay = null,
    Object? position = null,
    Object? total = null,
  }) {
    return _then(_$PreviewPlayerPagePlayVideoImpl(
      null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as File,
      null == isVideo
          ? _value.isVideo
          : isVideo // ignore: cast_nullable_to_non_nullable
              as bool,
      null == isPlay
          ? _value.isPlay
          : isPlay // ignore: cast_nullable_to_non_nullable
              as bool,
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$PreviewPlayerPagePlayVideoImpl implements PreviewPlayerPagePlayVideo {
  const _$PreviewPlayerPagePlayVideoImpl(
      this.file, this.isVideo, this.isPlay, this.position, this.total);

  @override
  final File file;
  @override
  final bool isVideo;
  @override
  final bool isPlay;
  @override
  final Duration position;
  @override
  final Duration total;

  @override
  String toString() {
    return 'PreviewPlayerPageState.playVideo(file: $file, isVideo: $isVideo, isPlay: $isPlay, position: $position, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewPlayerPagePlayVideoImpl &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.isVideo, isVideo) || other.isVideo == isVideo) &&
            (identical(other.isPlay, isPlay) || other.isPlay == isPlay) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.total, total) || other.total == total));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, file, isVideo, isPlay, position, total);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreviewPlayerPagePlayVideoImplCopyWith<_$PreviewPlayerPagePlayVideoImpl>
      get copyWith => __$$PreviewPlayerPagePlayVideoImplCopyWithImpl<
          _$PreviewPlayerPagePlayVideoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file, bool isVideo) initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isSuccess, File? file, bool isVideo)
        savingSuccess,
    required TResult Function(File file, bool isVideo, bool isPlay,
            Duration position, Duration total)
        playVideo,
    required TResult Function() deleteVideoSuccess,
  }) {
    return playVideo(file, isVideo, isPlay, position, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file, bool isVideo)? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult? Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult? Function()? deleteVideoSuccess,
  }) {
    return playVideo?.call(file, isVideo, isPlay, position, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file, bool isVideo)? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult Function()? deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (playVideo != null) {
      return playVideo(file, isVideo, isPlay, position, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviewPlayerPageInitial value) initial,
    required TResult Function(PreviewPlayerPageLoading value) loading,
    required TResult Function(PreviewPlayerPageError value) error,
    required TResult Function(PreviewPlayerPageSavingSuccess value)
        savingSuccess,
    required TResult Function(PreviewPlayerPagePlayVideo value) playVideo,
    required TResult Function(PreviewPlayerPageDeleteVideoSuccess value)
        deleteVideoSuccess,
  }) {
    return playVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewPlayerPageInitial value)? initial,
    TResult? Function(PreviewPlayerPageLoading value)? loading,
    TResult? Function(PreviewPlayerPageError value)? error,
    TResult? Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult? Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult? Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
  }) {
    return playVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewPlayerPageInitial value)? initial,
    TResult Function(PreviewPlayerPageLoading value)? loading,
    TResult Function(PreviewPlayerPageError value)? error,
    TResult Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (playVideo != null) {
      return playVideo(this);
    }
    return orElse();
  }
}

abstract class PreviewPlayerPagePlayVideo implements PreviewPlayerPageState {
  const factory PreviewPlayerPagePlayVideo(
      final File file,
      final bool isVideo,
      final bool isPlay,
      final Duration position,
      final Duration total) = _$PreviewPlayerPagePlayVideoImpl;

  File get file;
  bool get isVideo;
  bool get isPlay;
  Duration get position;
  Duration get total;

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreviewPlayerPagePlayVideoImplCopyWith<_$PreviewPlayerPagePlayVideoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PreviewPlayerPageDeleteVideoSuccessImplCopyWith<$Res> {
  factory _$$PreviewPlayerPageDeleteVideoSuccessImplCopyWith(
          _$PreviewPlayerPageDeleteVideoSuccessImpl value,
          $Res Function(_$PreviewPlayerPageDeleteVideoSuccessImpl) then) =
      __$$PreviewPlayerPageDeleteVideoSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PreviewPlayerPageDeleteVideoSuccessImplCopyWithImpl<$Res>
    extends _$PreviewPlayerPageStateCopyWithImpl<$Res,
        _$PreviewPlayerPageDeleteVideoSuccessImpl>
    implements _$$PreviewPlayerPageDeleteVideoSuccessImplCopyWith<$Res> {
  __$$PreviewPlayerPageDeleteVideoSuccessImplCopyWithImpl(
      _$PreviewPlayerPageDeleteVideoSuccessImpl _value,
      $Res Function(_$PreviewPlayerPageDeleteVideoSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreviewPlayerPageState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PreviewPlayerPageDeleteVideoSuccessImpl
    implements PreviewPlayerPageDeleteVideoSuccess {
  const _$PreviewPlayerPageDeleteVideoSuccessImpl();

  @override
  String toString() {
    return 'PreviewPlayerPageState.deleteVideoSuccess()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreviewPlayerPageDeleteVideoSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(File file, bool isVideo) initial,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(bool isSuccess, File? file, bool isVideo)
        savingSuccess,
    required TResult Function(File file, bool isVideo, bool isPlay,
            Duration position, Duration total)
        playVideo,
    required TResult Function() deleteVideoSuccess,
  }) {
    return deleteVideoSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(File file, bool isVideo)? initial,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult? Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult? Function()? deleteVideoSuccess,
  }) {
    return deleteVideoSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(File file, bool isVideo)? initial,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(bool isSuccess, File? file, bool isVideo)? savingSuccess,
    TResult Function(File file, bool isVideo, bool isPlay, Duration position,
            Duration total)?
        playVideo,
    TResult Function()? deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (deleteVideoSuccess != null) {
      return deleteVideoSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PreviewPlayerPageInitial value) initial,
    required TResult Function(PreviewPlayerPageLoading value) loading,
    required TResult Function(PreviewPlayerPageError value) error,
    required TResult Function(PreviewPlayerPageSavingSuccess value)
        savingSuccess,
    required TResult Function(PreviewPlayerPagePlayVideo value) playVideo,
    required TResult Function(PreviewPlayerPageDeleteVideoSuccess value)
        deleteVideoSuccess,
  }) {
    return deleteVideoSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PreviewPlayerPageInitial value)? initial,
    TResult? Function(PreviewPlayerPageLoading value)? loading,
    TResult? Function(PreviewPlayerPageError value)? error,
    TResult? Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult? Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult? Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
  }) {
    return deleteVideoSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PreviewPlayerPageInitial value)? initial,
    TResult Function(PreviewPlayerPageLoading value)? loading,
    TResult Function(PreviewPlayerPageError value)? error,
    TResult Function(PreviewPlayerPageSavingSuccess value)? savingSuccess,
    TResult Function(PreviewPlayerPagePlayVideo value)? playVideo,
    TResult Function(PreviewPlayerPageDeleteVideoSuccess value)?
        deleteVideoSuccess,
    required TResult orElse(),
  }) {
    if (deleteVideoSuccess != null) {
      return deleteVideoSuccess(this);
    }
    return orElse();
  }
}

abstract class PreviewPlayerPageDeleteVideoSuccess
    implements PreviewPlayerPageState {
  const factory PreviewPlayerPageDeleteVideoSuccess() =
      _$PreviewPlayerPageDeleteVideoSuccessImpl;
}
