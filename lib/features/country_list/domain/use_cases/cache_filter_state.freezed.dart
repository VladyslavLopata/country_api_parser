// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cache_filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterParamsTearOff {
  const _$FilterParamsTearOff();

  _FilterParams call(String input) {
    return _FilterParams(
      input,
    );
  }
}

/// @nodoc
const $FilterParams = _$FilterParamsTearOff();

/// @nodoc
mixin _$FilterParams {
  String get input => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterParamsCopyWith<FilterParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterParamsCopyWith<$Res> {
  factory $FilterParamsCopyWith(
          FilterParams value, $Res Function(FilterParams) then) =
      _$FilterParamsCopyWithImpl<$Res>;
  $Res call({String input});
}

/// @nodoc
class _$FilterParamsCopyWithImpl<$Res> implements $FilterParamsCopyWith<$Res> {
  _$FilterParamsCopyWithImpl(this._value, this._then);

  final FilterParams _value;
  // ignore: unused_field
  final $Res Function(FilterParams) _then;

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
abstract class _$FilterParamsCopyWith<$Res>
    implements $FilterParamsCopyWith<$Res> {
  factory _$FilterParamsCopyWith(
          _FilterParams value, $Res Function(_FilterParams) then) =
      __$FilterParamsCopyWithImpl<$Res>;
  @override
  $Res call({String input});
}

/// @nodoc
class __$FilterParamsCopyWithImpl<$Res> extends _$FilterParamsCopyWithImpl<$Res>
    implements _$FilterParamsCopyWith<$Res> {
  __$FilterParamsCopyWithImpl(
      _FilterParams _value, $Res Function(_FilterParams) _then)
      : super(_value, (v) => _then(v as _FilterParams));

  @override
  _FilterParams get _value => super._value as _FilterParams;

  @override
  $Res call({
    Object? input = freezed,
  }) {
    return _then(_FilterParams(
      input == freezed
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FilterParams implements _FilterParams {
  const _$_FilterParams(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'FilterParams(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilterParams &&
            (identical(other.input, input) ||
                const DeepCollectionEquality().equals(other.input, input)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(input);

  @JsonKey(ignore: true)
  @override
  _$FilterParamsCopyWith<_FilterParams> get copyWith =>
      __$FilterParamsCopyWithImpl<_FilterParams>(this, _$identity);
}

abstract class _FilterParams implements FilterParams {
  const factory _FilterParams(String input) = _$_FilterParams;

  @override
  String get input => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilterParamsCopyWith<_FilterParams> get copyWith =>
      throw _privateConstructorUsedError;
}
