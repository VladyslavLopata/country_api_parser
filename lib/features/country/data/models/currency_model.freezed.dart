// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'currency_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) {
  return _CurrencyModel.fromJson(json);
}

/// @nodoc
class _$CurrencyModelTearOff {
  const _$CurrencyModelTearOff();

  _CurrencyModel call({String? code, String? name, String? symbol}) {
    return _CurrencyModel(
      code: code,
      name: name,
      symbol: symbol,
    );
  }

  CurrencyModel fromJson(Map<String, Object> json) {
    return CurrencyModel.fromJson(json);
  }
}

/// @nodoc
const $CurrencyModel = _$CurrencyModelTearOff();

/// @nodoc
mixin _$CurrencyModel {
  String? get code => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get symbol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrencyModelCopyWith<CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyModelCopyWith<$Res> {
  factory $CurrencyModelCopyWith(
          CurrencyModel value, $Res Function(CurrencyModel) then) =
      _$CurrencyModelCopyWithImpl<$Res>;
  $Res call({String? code, String? name, String? symbol});
}

/// @nodoc
class _$CurrencyModelCopyWithImpl<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  _$CurrencyModelCopyWithImpl(this._value, this._then);

  final CurrencyModel _value;
  // ignore: unused_field
  final $Res Function(CurrencyModel) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CurrencyModelCopyWith<$Res>
    implements $CurrencyModelCopyWith<$Res> {
  factory _$CurrencyModelCopyWith(
          _CurrencyModel value, $Res Function(_CurrencyModel) then) =
      __$CurrencyModelCopyWithImpl<$Res>;
  @override
  $Res call({String? code, String? name, String? symbol});
}

/// @nodoc
class __$CurrencyModelCopyWithImpl<$Res>
    extends _$CurrencyModelCopyWithImpl<$Res>
    implements _$CurrencyModelCopyWith<$Res> {
  __$CurrencyModelCopyWithImpl(
      _CurrencyModel _value, $Res Function(_CurrencyModel) _then)
      : super(_value, (v) => _then(v as _CurrencyModel));

  @override
  _CurrencyModel get _value => super._value as _CurrencyModel;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? symbol = freezed,
  }) {
    return _then(_CurrencyModel(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrencyModel implements _CurrencyModel {
  _$_CurrencyModel({this.code, this.name, this.symbol});

  factory _$_CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CurrencyModelFromJson(json);

  @override
  final String? code;
  @override
  final String? name;
  @override
  final String? symbol;

  @override
  String toString() {
    return 'CurrencyModel(code: $code, name: $name, symbol: $symbol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CurrencyModel &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(symbol);

  @JsonKey(ignore: true)
  @override
  _$CurrencyModelCopyWith<_CurrencyModel> get copyWith =>
      __$CurrencyModelCopyWithImpl<_CurrencyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CurrencyModelToJson(this);
  }
}

abstract class _CurrencyModel implements CurrencyModel {
  factory _CurrencyModel({String? code, String? name, String? symbol}) =
      _$_CurrencyModel;

  factory _CurrencyModel.fromJson(Map<String, dynamic> json) =
      _$_CurrencyModel.fromJson;

  @override
  String? get code => throw _privateConstructorUsedError;
  @override
  String? get name => throw _privateConstructorUsedError;
  @override
  String? get symbol => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CurrencyModelCopyWith<_CurrencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}
