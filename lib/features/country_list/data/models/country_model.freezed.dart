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
      {required String name, String? subregion, String? alpha2Code}) {
    return _CountryModel(
      name: name,
      subregion: subregion,
      alpha2Code: alpha2Code,
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
  String get name => throw _privateConstructorUsedError;
  String? get subregion => throw _privateConstructorUsedError;
  String? get alpha2Code => throw _privateConstructorUsedError;

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
  $Res call({String name, String? subregion, String? alpha2Code});
}

/// @nodoc
class _$CountryModelCopyWithImpl<$Res> implements $CountryModelCopyWith<$Res> {
  _$CountryModelCopyWithImpl(this._value, this._then);

  final CountryModel _value;
  // ignore: unused_field
  final $Res Function(CountryModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? subregion = freezed,
    Object? alpha2Code = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subregion: subregion == freezed
          ? _value.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as String?,
      alpha2Code: alpha2Code == freezed
          ? _value.alpha2Code
          : alpha2Code // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String name, String? subregion, String? alpha2Code});
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
    Object? name = freezed,
    Object? subregion = freezed,
    Object? alpha2Code = freezed,
  }) {
    return _then(_CountryModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      subregion: subregion == freezed
          ? _value.subregion
          : subregion // ignore: cast_nullable_to_non_nullable
              as String?,
      alpha2Code: alpha2Code == freezed
          ? _value.alpha2Code
          : alpha2Code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CountryModel implements _CountryModel {
  _$_CountryModel({required this.name, this.subregion, this.alpha2Code});

  factory _$_CountryModel.fromJson(Map<String, dynamic> json) =>
      _$_$_CountryModelFromJson(json);

  @override
  final String name;
  @override
  final String? subregion;
  @override
  final String? alpha2Code;

  @override
  String toString() {
    return 'CountryModel(name: $name, subregion: $subregion, alpha2Code: $alpha2Code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CountryModel &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.subregion, subregion) ||
                const DeepCollectionEquality()
                    .equals(other.subregion, subregion)) &&
            (identical(other.alpha2Code, alpha2Code) ||
                const DeepCollectionEquality()
                    .equals(other.alpha2Code, alpha2Code)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(subregion) ^
      const DeepCollectionEquality().hash(alpha2Code);

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
      {required String name,
      String? subregion,
      String? alpha2Code}) = _$_CountryModel;

  factory _CountryModel.fromJson(Map<String, dynamic> json) =
      _$_CountryModel.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get subregion => throw _privateConstructorUsedError;
  @override
  String? get alpha2Code => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CountryModelCopyWith<_CountryModel> get copyWith =>
      throw _privateConstructorUsedError;
}
