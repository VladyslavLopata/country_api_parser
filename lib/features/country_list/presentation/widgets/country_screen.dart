import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:country_api_parser/features/country_list/presentation/widgets/country_input_field.dart';
import 'package:country_api_parser/features/country_list/presentation/widgets/country_list.dart';
import 'package:flutter/material.dart';

class CountryScreen extends StatelessWidget {
  final List<Country> countries;
  const CountryScreen({Key? key, required this.countries}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CountryInputField(),
          CountryList(countries: countries),
        ],
      ),
    );
  }
}
