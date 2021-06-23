// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CountryModel _$CountryModelFromJson(Map<String, dynamic> json) {
  return _CountryModel.fromJson(json);
}

/// @nodoc
class _$CountryModelTearOff {
  const _$CountryModelTearOff();

  _CountryModel call(
      {required List<double> latlng,
      String? numericCode,
      List<String>? borders,
      List<CurrencyModel>? currencies}) {
    return _CountryModel(
      latlng: latlng,
      numericCode: numericCode,
      borders: borders,
      currencies: currencies,
    );
  }

  CountryModel fromJson(Map<String, Object> json) {
    return CountryModel.fromJson(json);
  }
}

/// @nodoc
const $CountryModel = _$CountryModelTearOff();

/// @nodoc
mixin _$CountryModel {
  List<double> get latlng => throw _privateConstructorUsedError;
  String? get numericCode => throw _privateConstructorUsedError;
  List<String>? get borders => throw _privateConstructorUsedError;
  List<CurrencyModel>? get currencies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CountryModelCopyWith<CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryModelCopyWith<$Res> {
  factory $CountryModelCopyWith(
          CountryModel value, $Res Function(CountryModel) then) =
      _$CountryModelCopyWithImpl<$Res>;
  $Res call(
      {List<double> latlng,
      String? numericCode,
      List<String>? borders,
      List<CurrencyModel>? currencies});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res> implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  final CountryModel _value;
  // ignore: unused_field
  final $Res Function(CountryModel) _then;

  @override
  $Res call({
    Object? latlng = freezed,
    Object? numericCode = freezed,
    Object? borders = freezed,
    Object? currencies = freezed,
  }) {
    return _then(_value.copyWith(
      latlng: latlng == freezed
          ? _value.latlng
          : latlng // ignore: cast_nullable_to_non_nullable
              as List<double>,
      numericCode: numericCode == freezed
          ? _value.numericCode
          : numericCode // ignore: cast_nullable_to_non_nullable
              as String?,
      borders: borders == freezed
          ? _value.borders
          : borders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>?,
    ));
  }
}

/// @nodoc
abstract class _$CountryModelCopyWith<$Res>
    implements $CountryModelCopyWith<$Res> {
  factory _$CountryModelCopyWith(
          _CountryModel value, $Res Function(_CountryModel) then) =
      __$CountryModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<double> latlng,
      String? numericCode,
      List<String>? borders,
      List<CurrencyModel>? currencies});
}

/// @nodoc
class __$CountryModelCopyWithImpl<$Res> extends _$CountryModelCopyWithImpl<$Res>
    implements _$CountryModelCopyWith<$Res> {
  __$CountryModelCopyWithImpl(
      _CountryModel _value, $Res Function(_CountryModel) _then)
      : super(_value, (v) => _then(v as _CountryModel));

  @override
  _CountryModel get _value => super._value as _CountryModel;

  @override
  $Res call({
    Object? latlng = freezed,
    Object? numericCode = freezed,
    Object? borders = freezed,
    Object? currencies = freezed,
  }) {
    return _then(_CountryModel(
      latlng: latlng == freezed
          ? _value.latlng
          : latlng // ignore: cast_nullable_to_non_nullable
              as List<double>,
      numericCode: numericCode == freezed
          ? _value.numericCode
          : numericCode // ignore: cast_nullable_to_non_nullable
              as String?,
      borders: borders == freezed
          ? _value.borders
          : borders // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      currencies: currencies == freezed
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as List<CurrencyModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryModel implements _CountryModel {
  _$_CountryModel(
      {required this.latlng, this.numericCode, this.borders, this.currencies});

  factory _$_CountryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryModelFromJson(json);

  @override
  final List<double> latlng;
  @override
  final String? numericCode;
  @override
  final List<String>? borders;
  @override
  final List<CurrencyModel>? currencies;

  @override
  String toString() {
    return 'CountryModel(latlng: $latlng, numericCode: $numericCode, borders: $borders, currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryModel &&
            (identical(other.latlng, latlng) ||
                const DeepCollectionEquality().equals(other.latlng, latlng)) &&
            (identical(other.numericCode, numericCode) ||
                const DeepCollectionEquality()
                    .equals(other.numericCode, numericCode)) &&
            (identical(other.borders, borders) ||
                const DeepCollectionEquality()
                    .equals(other.borders, borders)) &&
            (identical(other.currencies, currencies) ||
                const DeepCollectionEquality()
                    .equals(other.currencies, currencies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(latlng) ^
      const DeepCollectionEquality().hash(numericCode) ^
      const DeepCollectionEquality().hash(borders) ^
      const DeepCollectionEquality().hash(currencies);

  @JsonKey(ignore: true)
  @override
  _$CountryModelCopyWith<_CountryModel> get copyWith =>
      __$CountryModelCopyWithImpl<_CountryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CountryModelToJson(this);
  }
}

abstract class _CountryModel implements CountryModel {
  factory _CountryModel(
      {required List<double> latlng,
      String? numericCode,
      List<String>? borders,
      List<CurrencyModel>? currencies}) = _$_CountryModel;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$_CountryModel.fromJson;

  @override
  List<double> get latlng => throw _privateConstructorUsedError;
  @override
  String? get numericCode => throw _privateConstructorUsedError;
  @override
  List<String>? get borders => throw _privateConstructorUsedError;
  @override
  List<CurrencyModel>? get currencies => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryModelCopyWith<_CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
