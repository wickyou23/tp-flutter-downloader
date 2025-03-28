// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'histories_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoriesPageState {
  Stream<List<HistoryDBData>> get histories =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stream<List<HistoryDBData>> histories) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Stream<List<HistoryDBData>> histories)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stream<List<HistoryDBData>> histories)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoriesPageInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoriesPageInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoriesPageInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HistoriesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoriesPageStateCopyWith<HistoriesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoriesPageStateCopyWith<$Res> {
  factory $HistoriesPageStateCopyWith(
          HistoriesPageState value, $Res Function(HistoriesPageState) then) =
      _$HistoriesPageStateCopyWithImpl<$Res, HistoriesPageState>;
  @useResult
  $Res call({Stream<List<HistoryDBData>> histories});
}

/// @nodoc
class _$HistoriesPageStateCopyWithImpl<$Res, $Val extends HistoriesPageState>
    implements $HistoriesPageStateCopyWith<$Res> {
  _$HistoriesPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoriesPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = null,
  }) {
    return _then(_value.copyWith(
      histories: null == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as Stream<List<HistoryDBData>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoriesPageInitialImplCopyWith<$Res>
    implements $HistoriesPageStateCopyWith<$Res> {
  factory _$$HistoriesPageInitialImplCopyWith(_$HistoriesPageInitialImpl value,
          $Res Function(_$HistoriesPageInitialImpl) then) =
      __$$HistoriesPageInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Stream<List<HistoryDBData>> histories});
}

/// @nodoc
class __$$HistoriesPageInitialImplCopyWithImpl<$Res>
    extends _$HistoriesPageStateCopyWithImpl<$Res, _$HistoriesPageInitialImpl>
    implements _$$HistoriesPageInitialImplCopyWith<$Res> {
  __$$HistoriesPageInitialImplCopyWithImpl(_$HistoriesPageInitialImpl _value,
      $Res Function(_$HistoriesPageInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoriesPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? histories = null,
  }) {
    return _then(_$HistoriesPageInitialImpl(
      null == histories
          ? _value.histories
          : histories // ignore: cast_nullable_to_non_nullable
              as Stream<List<HistoryDBData>>,
    ));
  }
}

/// @nodoc

class _$HistoriesPageInitialImpl implements HistoriesPageInitial {
  const _$HistoriesPageInitialImpl(this.histories);

  @override
  final Stream<List<HistoryDBData>> histories;

  @override
  String toString() {
    return 'HistoriesPageState.initial(histories: $histories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoriesPageInitialImpl &&
            (identical(other.histories, histories) ||
                other.histories == histories));
  }

  @override
  int get hashCode => Object.hash(runtimeType, histories);

  /// Create a copy of HistoriesPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoriesPageInitialImplCopyWith<_$HistoriesPageInitialImpl>
      get copyWith =>
          __$$HistoriesPageInitialImplCopyWithImpl<_$HistoriesPageInitialImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Stream<List<HistoryDBData>> histories) initial,
  }) {
    return initial(histories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Stream<List<HistoryDBData>> histories)? initial,
  }) {
    return initial?.call(histories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Stream<List<HistoryDBData>> histories)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(histories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoriesPageInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoriesPageInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoriesPageInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistoriesPageInitial implements HistoriesPageState {
  const factory HistoriesPageInitial(
      final Stream<List<HistoryDBData>> histories) = _$HistoriesPageInitialImpl;

  @override
  Stream<List<HistoryDBData>> get histories;

  /// Create a copy of HistoriesPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoriesPageInitialImplCopyWith<_$HistoriesPageInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}
