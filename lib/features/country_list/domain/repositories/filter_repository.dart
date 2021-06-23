import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/core/use_cases/use_case.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country_filter.dart';
import 'package:dartz/dartz.dart';

abstract class FilterRepository {
  Future<Either<Failure, CountryFilter>> getAppliedFilter();
  Future<Either<Failure, NoParams>> applyFilter(String filter);
}
