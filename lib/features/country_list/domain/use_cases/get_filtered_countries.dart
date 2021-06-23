import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/core/use_cases/use_case.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:country_api_parser/features/country_list/domain/repositories/country_repository.dart';
import 'package:country_api_parser/features/country_list/domain/repositories/filter_repository.dart';
import 'package:dartz/dartz.dart';

class GetFilteredCountries implements UseCase<List<Country>, NoParams> {
  final CountriesRepository countryRepository;
  final FilterRepository filterRepository;
  const GetFilteredCountries({
    required this.countryRepository,
    required this.filterRepository,
  });

  @override
  Future<Either<Failure, List<Country>>> call(NoParams params) async {
    final filter = await filterRepository.getAppliedFilter();
    final countries = await countryRepository.getCachedCountries();

    return filter.fold(
      (failure) => Left(failure),
      (activeFilter) => Right(
        countries
            .where(
              (country) => country.name
                  .toLowerCase()
                  .contains(activeFilter.input.toLowerCase()),
            )
            .toList(),
      ),
    );
  }
}
