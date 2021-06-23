import 'package:country_api_parser/features/country/domain/entities/currency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency_model.freezed.dart';
part 'currency_model.g.dart';

@freezed
class CurrencyModel with _$CurrencyModel implements Currency {
  factory CurrencyModel({
    String? code,
    String? name,
    String? symbol,
  }) = _CurrencyModel;

  factory CurrencyModel.fromJson(Map<String, dynamic> json) =>
      _$CurrencyModelFromJson(json);
}
