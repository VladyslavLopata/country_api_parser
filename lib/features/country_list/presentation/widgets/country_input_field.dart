import 'package:country_api_parser/core/services/service_locator.dart';
import 'package:country_api_parser/features/country_list/presentation/bloc/country_bloc.dart';
import 'package:flutter/material.dart';

class CountryInputField extends StatelessWidget {
  const CountryInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = locator<CountriesBloc>();
    return Container(
      height: 38.0,
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        onChanged: (input) => bloc.add(
          KeyboardInputCountryEvent(input),
        ),
        onSubmitted: (input) => bloc.add(
          KeyboardSubmitCountryEvent(input),
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          isDense: true,
        ),
      ),
    );
  }
}
