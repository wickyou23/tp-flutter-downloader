// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flavor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Flavor {
  FlavorType get type => throw _privateConstructorUsedError;
  String get baseUrl => throw _privateConstructorUsedError;

  /// Create a copy of Flavor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlavorCopyWith<Flavor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorCopyWith<$Res> {
  factory $FlavorCopyWith(Flavor value, $Res Function(Flavor) then) =
      _$FlavorCopyWithImpl<$Res, Flavor>;
  @useResult
  $Res call({FlavorType type, String baseUrl});
}

/// @nodoc
class _$FlavorCopyWithImpl<$Res, $Val extends Flavor>
    implements $FlavorCopyWith<$Res> {
  _$FlavorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Flavor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? baseUrl = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FlavorType,
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlavorImplCopyWith<$Res> implements $FlavorCopyWith<$Res> {
  factory _$$FlavorImplCopyWith(
          _$FlavorImpl value, $Res Function(_$FlavorImpl) then) =
      __$$FlavorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FlavorType type, String baseUrl});
}

/// @nodoc
class __$$FlavorImplCopyWithImpl<$Res>
    extends _$FlavorCopyWithImpl<$Res, _$FlavorImpl>
    implements _$$FlavorImplCopyWith<$Res> {
  __$$FlavorImplCopyWithImpl(
      _$FlavorImpl _value, $Res Function(_$FlavorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Flavor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? baseUrl = null,
  }) {
    return _then(_$FlavorImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FlavorType,
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FlavorImpl implements _Flavor {
  const _$FlavorImpl({required this.type, required this.baseUrl});

  @override
  final FlavorType type;
  @override
  final String baseUrl;

  @override
  String toString() {
    return 'Flavor(type: $type, baseUrl: $baseUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, baseUrl);

  /// Create a copy of Flavor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorImplCopyWith<_$FlavorImpl> get copyWith =>
      __$$FlavorImplCopyWithImpl<_$FlavorImpl>(this, _$identity);
}

abstract class _Flavor implements Flavor {
  const factory _Flavor(
      {required final FlavorType type,
      required final String baseUrl}) = _$FlavorImpl;

  @override
  FlavorType get type;
  @override
  String get baseUrl;

  /// Create a copy of Flavor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlavorImplCopyWith<_$FlavorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
