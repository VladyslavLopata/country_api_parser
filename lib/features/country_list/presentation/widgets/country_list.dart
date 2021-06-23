import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:country_api_parser/features/country_list/presentation/widgets/country_card.dart';
import 'package:flutter/material.dart';

class CountryList extends StatelessWidget {
  const CountryList({
    Key? key,
    required this.countries,
  }) : super(key: key);

  final List<Country> countries;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      height: MediaQuery.of(context).size.height -
          60.0 -
          MediaQuery.of(context).viewInsets.bottom,
      child: Builder(builder: (context) {
        if (countries.isEmpty) {
          return const Center(child: Text('No countries found!'));
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: countries.length,
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          itemBuilder: (context, index) {
            return CountryCard(currentCountry: countries[index]);
          },
        );
      }),
    );
  }
}
