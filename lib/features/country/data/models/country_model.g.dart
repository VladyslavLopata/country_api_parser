// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountryModel _$_$_CountryModelFromJson(Map<String, dynamic> json) {
  return _$_CountryModel(
    latlng: (json['latlng'] as List<dynamic>)
        .map((e) => (e as num).toDouble())
        .toList(),
    numericCode: json['numericCode'] as String?,
    borders:
        (json['borders'] as List<dynamic>?)?.map((e) => e as String).toList(),
    currencies: (json['currencies'] as List<dynamic>?)
        ?.map((e) => CurrencyModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_CountryModelToJson(_$_CountryModel instance) =>
    <String, dynamic>{
      'latlng': instance.latlng,
      'numericCode': instance.numericCode,
      'borders': instance.borders,
      'currencies': instance.currencies,
    };
