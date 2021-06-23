import 'package:country_api_parser/core/services/route_manager.dart';
import 'package:country_api_parser/features/country/data/data_sources/country_remote_data_source.dart';
import 'package:country_api_parser/features/country/data/repositories/country_repository.dart';
import 'package:country_api_parser/features/country/domain/repositories/country_repository.dart';
import 'package:country_api_parser/features/country/domain/use_cases/get_country.dart';
import 'package:country_api_parser/features/country/presentation/bloc/country_bloc_bloc.dart';
import 'package:country_api_parser/features/country_list/data/data_sources/country_local_data_source.dart';
import 'package:country_api_parser/features/country_list/data/data_sources/country_remote_data_source.dart';
import 'package:country_api_parser/features/country_list/data/data_sources/filter_local_data_source.dart';
import 'package:country_api_parser/features/country_list/data/repositories/country_repository_impl.dart';
import 'package:country_api_parser/features/country_list/data/repositories/filter_repository_impl.dart';
import 'package:country_api_parser/features/country_list/domain/repositories/country_repository.dart';
import 'package:country_api_parser/features/country_list/domain/repositories/filter_repository.dart';
import 'package:country_api_parser/features/country_list/domain/use_cases/cache_filter_state.dart';
import 'package:country_api_parser/features/country_list/domain/use_cases/get_countries.dart';
import 'package:country_api_parser/features/country_list/domain/use_cases/get_filtered_countries.dart';
import 'package:country_api_parser/features/country_list/domain/use_cases/remove_cached_country.dart';
import 'package:country_api_parser/features/country_list/presentation/bloc/country_bloc.dart';
import 'package:get_it/get_it.dart';

import 'package:http/http.dart' as http;

final locator = GetIt.I;

void setupDependencies() {
  locator.registerLazySingleton(() => RouteManager());
  locator.registerLazySingleton(() => http.Client());

  locator.registerLazySingleton<CountriesRemoteDataSource>(
    () => CountriesRemoteDataSourceImpl(locator()),
  );

  locator.registerLazySingleton<CountriesLocalDataSource>(
    () => CountriesLocalDataSourceImpl(),
  );

  locator.registerLazySingleton<FilterLocalDataSource>(
    () => FilterLocalDataSourceImpl(),
  );

  locator.registerLazySingleton<CountryRemoteDataSource>(
    () => CountryRemoteDataSourceImpl(locator()),
  );

  locator.registerLazySingleton<CountriesRepository>(
    () => CountriesRepositoryImpl(
      localDataSource: locator(),
      remoteDataSource: locator(),
    ),
  );

  locator.registerLazySingleton<FilterRepository>(
    () => FilterRepositoryImpl(locator()),
  );

  locator.registerLazySingleton<CountryRepository>(
      () => CountryRepositoryImpl(locator()));

  locator.registerLazySingleton(() => GetCountries(locator()));
  locator.registerLazySingleton(
    () => GetFilteredCountries(
      countryRepository: locator(),
      filterRepository: locator(),
    ),
  );

  locator.registerLazySingleton(() => RemoveCachedCountry(locator()));

  locator.registerLazySingleton(() => CacheFilterState(locator()));

  locator.registerLazySingleton(() => GetCountry(locator()));

  locator.registerLazySingleton(
    () => CountryBloc(getCountry: locator()),
  );

  locator.registerLazySingleton(
    () => CountriesBloc(
      getCountries: locator(),
      getFilteredCountries: locator(),
      removeCachedCountry: locator(),
      cacheFilterState: locator(),
    ),
  );
}
