// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'remove_cached_country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RemoveParamsTearOff {
  const _$RemoveParamsTearOff();

  _RemoveParams call(Country country) {
    return _RemoveParams(
      country,
    );
  }
}

/// @nodoc
const $RemoveParams = _$RemoveParamsTearOff();

/// @nodoc
mixin _$RemoveParams {
  Country get country => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemoveParamsCopyWith<RemoveParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveParamsCopyWith<$Res> {
  factory $RemoveParamsCopyWith(
          RemoveParams value, $Res Function(RemoveParams) then) =
      _$RemoveParamsCopyWithImpl<$Res>;
  $Res call({Country country});
}

/// @nodoc
class _$RemoveParamsCopyWithImpl<$Res> implements $RemoveParamsCopyWith<$Res> {
  _$RemoveParamsCopyWithImpl(this._value, this._then);

  final RemoveParams _value;
  // ignore: unused_field
  final $Res Function(RemoveParams) _then;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc
abstract class _$RemoveParamsCopyWith<$Res>
    implements $RemoveParamsCopyWith<$Res> {
  factory _$RemoveParamsCopyWith(
          _RemoveParams value, $Res Function(_RemoveParams) then) =
      __$RemoveParamsCopyWithImpl<$Res>;
  @override
  $Res call({Country country});
}

/// @nodoc
class __$RemoveParamsCopyWithImpl<$Res> extends _$RemoveParamsCopyWithImpl<$Res>
    implements _$RemoveParamsCopyWith<$Res> {
  __$RemoveParamsCopyWithImpl(
      _RemoveParams _value, $Res Function(_RemoveParams) _then)
      : super(_value, (v) => _then(v as _RemoveParams));

  @override
  _RemoveParams get _value => super._value as _RemoveParams;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(_RemoveParams(
      country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc

class _$_RemoveParams implements _RemoveParams {
  const _$_RemoveParams(this.country);

  @override
  final Country country;

  @override
  String toString() {
    return 'RemoveParams(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveParams &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  _$RemoveParamsCopyWith<_RemoveParams> get copyWith =>
      __$RemoveParamsCopyWithImpl<_RemoveParams>(this, _$identity);
}

abstract class _RemoveParams implements RemoveParams {
  const factory _RemoveParams(Country country) = _$_RemoveParams;

  @override
  Country get country => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RemoveParamsCopyWith<_RemoveParams> get copyWith =>
      throw _privateConstructorUsedError;
}
