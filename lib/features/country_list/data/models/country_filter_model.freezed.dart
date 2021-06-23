// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country_filter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountryFilterModelTearOff {
  const _$CountryFilterModelTearOff();

  _CountryFilterModel call(String input) {
    return _CountryFilterModel(
      input,
    );
  }
}

/// @nodoc
const $CountryFilterModel = _$CountryFilterModelTearOff();

/// @nodoc
mixin _$CountryFilterModel {
  String get input => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryFilterModelCopyWith<CountryFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryFilterModelCopyWith<$Res> {
  factory $CountryFilterModelCopyWith(
          CountryFilterModel value, $Res Function(CountryFilterModel) then) =
      _$CountryFilterModelCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$CountryFilterModelCopyWithImpl<$Res>
    implements $CountryFilterModelCopyWith<$Res> {
  _$CountryFilterModelCopyWithImpl(this._value, this._then);

  final CountryFilterModel _value;
  // ignore: unused_field
  final $Res Function(CountryFilterModel) _then;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_value.copyWith(
      input: input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CountryFilterModelCopyWith<$Res>
    implements $CountryFilterModelCopyWith<$Res> {
  factory _$CountryFilterModelCopyWith(
          _CountryFilterModel value, $Res Function(_CountryFilterModel) then) =
      __$CountryFilterModelCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$CountryFilterModelCopyWithImpl<$Res>
    extends _$CountryFilterModelCopyWithImpl<$Res>
    implements _$CountryFilterModelCopyWith<$Res> {
  __$CountryFilterModelCopyWithImpl(
      _CountryFilterModel _value, $Res Function(_CountryFilterModel) _then)
      : super(_value, (v) => _then(v as _CountryFilterModel));

  @override
  _CountryFilterModel get _value => super._value as _CountryFilterModel;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_CountryFilterModel(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CountryFilterModel implements _CountryFilterModel {
  const _$_CountryFilterModel(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'CountryFilterModel(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryFilterModel &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$CountryFilterModelCopyWith<_CountryFilterModel> get copyWith =>
      __$CountryFilterModelCopyWithImpl<_CountryFilterModel>(this, _$identity);
}

abstract class _CountryFilterModel implements CountryFilterModel {
  const factory _CountryFilterModel(String input) = _$_CountryFilterModel;

  @override
  String get input => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryFilterModelCopyWith<_CountryFilterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
