import 'package:country_api_parser/core/services/service_locator.dart';
import 'package:country_api_parser/core/widgets/error_screen.dart';
import 'package:country_api_parser/core/widgets/loading_screen.dart';
import 'package:country_api_parser/features/country_list/presentation/bloc/country_bloc.dart';
import 'package:country_api_parser/features/country_list/presentation/widgets/country_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountriesBloc, CountryState>(
      bloc: locator<CountriesBloc>()..add(const InitialCountryEvent()),
      builder: (context, state) {
        return state.when(
          loading: () => const LoadingScreen(),
          loaded: (countries) => CountryScreen(countries: countries),
          error: (errorMessage) => ErrorScreen(
            errorMessage: errorMessage,
            onRetry: () {
              locator<CountriesBloc>().add(const InitialCountryEvent());
            },
          ),
        );
      },
    );
  }
}
