import 'package:country_api_parser/features/country_list/domain/entities/country.dart';

abstract class CountriesLocalDataSource {
  Future<List<Country>> getCachedCountries();
  Future<void> cacheCountries(List<Country> countriesToCache);
  Future<void> removeCountryFromCache(Country country);
}

class CountriesLocalDataSourceImpl implements CountriesLocalDataSource {
  List<Country> cachedCountries;

  CountriesLocalDataSourceImpl() : cachedCountries = [];

  @override
  Future<void> cacheCountries(List<Country> countriesToCache) async {
    cachedCountries = [...countriesToCache];
  }

  @override
  Future<List<Country>> getCachedCountries() async {
    return cachedCountries;
  }

  @override
  Future<void> removeCountryFromCache(Country country) async {
    cachedCountries.remove(country);
  }
}
