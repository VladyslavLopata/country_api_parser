import 'dart:convert';

import 'package:country_api_parser/core/errors/exceptions.dart';
import 'package:country_api_parser/core/services/logger.dart';
import 'package:country_api_parser/features/country/data/models/country_model.dart';

import 'package:http/http.dart' as http;

abstract class CountryRemoteDataSource {
  Future<CountryModel> getCountry(String countryName);
}

class CountryRemoteDataSourceImpl implements CountryRemoteDataSource {
  final http.Client client;

  CountryRemoteDataSourceImpl(this.client);
  @override
  Future<CountryModel> getCountry(String countryName) async {
    final link =
        'https://restcountries.eu/rest/v2/name/$countryName?fullText=true';
    logger.i('GET --> $link');

    final uri = Uri.parse(link);

    final response = await client.get(
      uri,
    );

    if (response.statusCode != 200) {
      throw ServerException();
    }

    logger.i('GET <-- $link\n${response.body}');
    return CountryModel.fromJson(
      (jsonDecode(response.body) as List).first as Map<String, dynamic>,
    );
  }
}
