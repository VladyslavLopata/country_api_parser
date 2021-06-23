import 'package:country_api_parser/core/errors/exceptions.dart';
import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/features/country/data/data_sources/country_remote_data_source.dart';
import 'package:country_api_parser/features/country/domain/entities/country.dart';
import 'package:country_api_parser/features/country/domain/repositories/country_repository.dart';
import 'package:dartz/dartz.dart';

class CountryRepositoryImpl implements CountryRepository {
  final CountryRemoteDataSource countryRemoteDataSource;

  CountryRepositoryImpl(this.countryRemoteDataSource);

  @override
  Future<Either<Failure, Country>> getCountry(String countryName) async {
    try {
      return Right(await countryRemoteDataSource.getCountry(countryName));
    } on ServerException {
      return const Left(ServerFailure());
    }
  }
}
