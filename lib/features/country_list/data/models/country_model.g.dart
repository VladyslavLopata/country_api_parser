// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryModel _$_$_CountryModelFromJson(Map<String, dynamic> json) {
  return _$_CountryModel(
    name: json['name'] as String,
    subregion: json['subregion'] as String?,
    alpha2Code: json['alpha2Code'] as String?,
  );
}

Map<String, dynamic> _$_$_CountryModelToJson(_$_CountryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'subregion': instance.subregion,
      'alpha2Code': instance.alpha2Code,
    };
