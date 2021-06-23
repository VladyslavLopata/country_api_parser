import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/core/use_cases/use_case.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:country_api_parser/features/country_list/domain/repositories/country_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_cached_country.freezed.dart';

class RemoveCachedCountry implements UseCase<NoParams, RemoveParams> {
  final CountriesRepository repository;
  const RemoveCachedCountry(this.repository);

  @override
  Future<Either<Failure, NoParams>> call(RemoveParams params) async {
    repository.removeCachedCountry(params.country);
    return Right(NoParams());
  }
}

@freezed
class RemoveParams with _$RemoveParams {
  const factory RemoveParams(Country country) = _RemoveParams;
}
