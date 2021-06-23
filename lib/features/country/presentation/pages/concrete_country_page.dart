import 'package:country_api_parser/core/services/service_locator.dart';
import 'package:country_api_parser/core/widgets/error_screen.dart';
import 'package:country_api_parser/core/widgets/loading_screen.dart';
import 'package:country_api_parser/features/country/presentation/bloc/country_bloc_bloc.dart';
import 'package:country_api_parser/features/country/presentation/widgets/country_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConcreteCountryPage extends StatelessWidget {
  const ConcreteCountryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryBlocState>(
      bloc: locator()
        ..add(
          LoadConcreteCountryEvent(
            countryName: ModalRoute.of(context)!.settings.arguments! as String,
          ),
        ),
      builder: (context, state) {
        return state.when(
          error: (errorMessage) => ErrorScreen(errorMessage: errorMessage),
          loading: () => const LoadingScreen(),
          loaded: (country) => CountryScreen(country: country),
        );
      },
    );
  }
}
