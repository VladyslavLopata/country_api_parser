import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/core/use_cases/use_case.dart';
import 'package:country_api_parser/features/country_list/data/data_sources/filter_local_data_source.dart';
import 'package:country_api_parser/features/country_list/data/models/country_filter_model.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country_filter.dart';
import 'package:country_api_parser/features/country_list/domain/repositories/filter_repository.dart';
import 'package:dartz/dartz.dart';

class FilterRepositoryImpl implements FilterRepository {
  final FilterLocalDataSource localDataSource;

  FilterRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, NoParams>> applyFilter(String filter) async {
    localDataSource.applyFilter(CountryFilterModel(filter));
    return Right(NoParams());
  }

  @override
  Future<Either<Failure, CountryFilter>> getAppliedFilter() async {
    return Right(await localDataSource.getAppliedFilter());
  }
}
