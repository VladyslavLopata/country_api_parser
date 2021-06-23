import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/core/use_cases/use_case.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:country_api_parser/features/country_list/domain/repositories/country_repository.dart';
import 'package:dartz/dartz.dart';

class GetCountries implements UseCase<List<Country>, NoParams> {
  final CountriesRepository repository;
  const GetCountries(this.repository);

  @override
  Future<Either<Failure, List<Country>>> call(NoParams params) async {
    return repository.getCountries();
  }
}
