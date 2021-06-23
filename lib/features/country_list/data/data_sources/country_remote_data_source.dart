import 'dart:convert';

import 'package:country_api_parser/core/errors/exceptions.dart';
import 'package:country_api_parser/core/services/logger.dart';
import 'package:country_api_parser/features/country_list/data/models/country_model.dart';

import 'package:http/http.dart' as http;

abstract class CountriesRemoteDataSource {
  Future<List<CountryModel>> getCountries();
}

class CountriesRemoteDataSourceImpl implements CountriesRemoteDataSource {
  final http.Client client;

  CountriesRemoteDataSourceImpl(this.client);

  @override
  Future<List<CountryModel>> getCountries() async {
    const link = 'https://restcountries.eu/rest/v2/region/europe';
    logger.i('GET --> $link');

    final uri = Uri.parse(link);

    final response = await client.get(
      uri,
    );

    if (response.statusCode != 200) {
      throw ServerException();
    }

    logger.i('GET <-- $link\n${response.body}');
    return (jsonDecode(response.body) as List)
        .map<CountryModel>(
            (e) => CountryModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
