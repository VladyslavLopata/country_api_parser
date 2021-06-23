import 'package:country_api_parser/core/services/service_locator.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:country_api_parser/features/country_list/presentation/bloc/country_bloc.dart';
import 'package:flag/flag.dart';
import 'package:flutter/material.dart';

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key? key,
    required this.currentCountry,
  }) : super(key: key);

  final Country currentCountry;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,
      key: ObjectKey(currentCountry),
      onDismissed: (_) => locator<CountriesBloc>().add(
        RemoveCountryEvent(currentCountry),
      ),
      child: InkWell(
        onTap: () => locator<CountriesBloc>().add(
          SelectedCountryEvent(currentCountry),
        ),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0,
              vertical: 4.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  currentCountry.name,
                  style: Theme.of(context).textTheme.headline6,
                ),
                if (currentCountry.subregion != null ||
                    currentCountry.alpha2Code != null)
                  const SizedBox(height: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (currentCountry.subregion != null)
                      Text.rich(
                        TextSpan(
                          text: 'Subregion: ',
                          children: [TextSpan(text: currentCountry.subregion)],
                        ),
                      ),
                    if (currentCountry.alpha2Code != null) ...[
                      Text.rich(
                        TextSpan(
                          text: 'Country code: ',
                          children: [TextSpan(text: currentCountry.alpha2Code)],
                        ),
                      ),
                      Row(
                        children: [
                          const Text('Flag: '),
                          Flag(
                            currentCountry.alpha2Code!,
                            width: 24,
                            height: 24,
                            replacement: const Text('not available'),
                          ),
                        ],
                      )
                    ]
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
