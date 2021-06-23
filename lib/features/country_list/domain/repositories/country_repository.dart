import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:dartz/dartz.dart';

abstract class CountriesRepository {
  Future<Either<Failure, List<Country>>> getCountries();
  Future<List<Country>> getCachedCountries();
  Future<void> removeCachedCountry(Country country);
}
