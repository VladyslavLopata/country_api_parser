import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_model.freezed.dart';
part 'country_model.g.dart';

@freezed
class CountryModel with _$CountryModel implements Country {
  factory CountryModel({
    required String name,
    String? subregion,
    String? alpha2Code,
  }) = _CountryModel;

  factory CountryModel.fromJson(Map<String, dynamic> json) =>
      _$CountryModelFromJson(json);
}
