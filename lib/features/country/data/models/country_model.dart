import 'package:country_api_parser/features/country/data/models/currency_model.dart';
import 'package:country_api_parser/features/country/domain/entities/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel implements Country {
  factory CountryModel({
    required List<double> latlng,
    String? numericCode,
    List<String>? borders,
    List<CurrencyModel>? currencies,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
