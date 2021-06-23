import 'package:country_api_parser/features/country/domain/entities/currency.dart';

class Country {
  final List<double> latlng;
  final String? numericCode;
  final List<String>? borders;
  final List<Currency>? currencies;

  Country({
    required this.latlng,
    this.numericCode,
    this.borders,
    this.currencies,
  });
}
