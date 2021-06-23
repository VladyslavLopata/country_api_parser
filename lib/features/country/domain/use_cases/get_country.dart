import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/core/use_cases/use_case.dart';
import 'package:country_api_parser/features/country/domain/entities/country.dart';
import 'package:country_api_parser/features/country/domain/repositories/country_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_country.freezed.dart';

class GetCountry implements UseCase<Country, CountryParams> {
  final CountryRepository countryRepository;

  GetCountry(this.countryRepository);

  @override
  Future<Either<Failure, Country>> call(CountryParams params) {
    return countryRepository.getCountry(params.name);
  }
}

@freezed
class CountryParams with _$CountryParams {
  const factory CountryParams({required String name}) = _CountryParams;
}
