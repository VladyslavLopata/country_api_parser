// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_country.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountryParamsTearOff {
  const _$CountryParamsTearOff();

  _CountryParams call({required String name}) {
    return _CountryParams(
      name: name,
    );
  }
}

/// @nodoc
const $CountryParams = _$CountryParamsTearOff();

/// @nodoc
mixin _$CountryParams {
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryParamsCopyWith<CountryParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryParamsCopyWith<$Res> {
  factory $CountryParamsCopyWith(
          CountryParams value, $Res Function(CountryParams) then) =
      _$CountryParamsCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$CountryParamsCopyWithImpl<$Res>
    implements $CountryParamsCopyWith<$Res> {
  _$CountryParamsCopyWithImpl(this._value, this._then);

  final CountryParams _value;
  // ignore: unused_field
  final $Res Function(CountryParams) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CountryParamsCopyWith<$Res>
    implements $CountryParamsCopyWith<$Res> {
  factory _$CountryParamsCopyWith(
          _CountryParams value, $Res Function(_CountryParams) then) =
      __$CountryParamsCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$CountryParamsCopyWithImpl<$Res>
    extends _$CountryParamsCopyWithImpl<$Res>
    implements _$CountryParamsCopyWith<$Res> {
  __$CountryParamsCopyWithImpl(
      _CountryParams _value, $Res Function(_CountryParams) _then)
      : super(_value, (v) => _then(v as _CountryParams));

  @override
  _CountryParams get _value => super._value as _CountryParams;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_CountryParams(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CountryParams implements _CountryParams {
  const _$_CountryParams({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'CountryParams(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryParams &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$CountryParamsCopyWith<_CountryParams> get copyWith =>
      __$CountryParamsCopyWithImpl<_CountryParams>(this, _$identity);
}

abstract class _CountryParams implements CountryParams {
  const factory _CountryParams({required String name}) = _$_CountryParams;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryParamsCopyWith<_CountryParams> get copyWith =>
      throw _privateConstructorUsedError;
}
