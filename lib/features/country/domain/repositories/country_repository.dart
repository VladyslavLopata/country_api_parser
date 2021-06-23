import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/features/country/domain/entities/country.dart';
import 'package:dartz/dartz.dart';

abstract class CountryRepository {
  Future<Either<Failure, Country>> getCountry(String countryName);
}
