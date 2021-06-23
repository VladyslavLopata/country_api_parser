import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:country_api_parser/features/country/domain/entities/country.dart';
import 'package:country_api_parser/features/country/domain/use_cases/get_country.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_bloc_event.dart';
part 'country_bloc_state.dart';
part 'country_bloc_bloc.freezed.dart';

const serverErrorMessage = 'Failed to load country';

class CountryBloc extends Bloc<CountryBlocEvent, CountryBlocState> {
  final GetCountry getCountry;

  CountryBloc({required this.getCountry})
      : super(const LoadingConcreteCountryState());

  Stream<CountryBlocState> _loadCountryData(String countryName) async* {
    yield const LoadingConcreteCountryState();
    yield await getCountry(CountryParams(name: countryName)).then(
      (value) => value.fold(
        (_) =>
            const ErrorConcreteCountryState(errorMessage: serverErrorMessage),
        (country) => LoadedConcreteCountryState(country: country),
      ),
    );
  }

  @override
  Stream<CountryBlocState> mapEventToState(
    CountryBlocEvent event,
  ) async* {
    yield* event.when(
      init: _loadCountryData,
    );
  }
}
