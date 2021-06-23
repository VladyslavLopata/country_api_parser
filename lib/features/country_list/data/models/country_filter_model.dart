import 'package:country_api_parser/features/country_list/domain/entities/country_filter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_filter_model.freezed.dart';

@freezed
class CountryFilterModel with _$CountryFilterModel implements CountryFilter {
  const factory CountryFilterModel(String input) = _CountryFilterModel;
}
