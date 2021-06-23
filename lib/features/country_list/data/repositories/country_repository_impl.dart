import 'dart:async';

import 'package:country_api_parser/core/errors/exceptions.dart';
import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/features/country_list/data/data_sources/country_local_data_source.dart';
import 'package:country_api_parser/features/country_list/data/data_sources/country_remote_data_source.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:country_api_parser/features/country_list/domain/repositories/country_repository.dart';
import 'package:dartz/dartz.dart';

class CountriesRepositoryImpl implements CountriesRepository {
  final CountriesRemoteDataSource remoteDataSource;
  final CountriesLocalDataSource localDataSource;

  CountriesRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<Country>>> getCountries() async {
    try {
      final localCountries = await remoteDataSource.getCountries();
      await localDataSource.cacheCountries(localCountries);
      return Right(localCountries);
    } on ServerException {
      return const Left(ServerFailure());
    }
  }

  @override
  Future<List<Country>> getCachedCountries() async {
    return localDataSource.getCachedCountries();
  }

  @override
  Future<void> removeCachedCountry(Country country) async {
    await localDataSource.removeCountryFromCache(country);
  }
}
