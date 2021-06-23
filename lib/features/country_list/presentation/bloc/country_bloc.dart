import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:country_api_parser/core/errors/failure.dart';
import 'package:country_api_parser/core/services/route_manager.dart';
import 'package:country_api_parser/core/services/service_locator.dart';
import 'package:country_api_parser/core/use_cases/use_case.dart';
import 'package:country_api_parser/features/country_list/domain/entities/country.dart';
import 'package:country_api_parser/features/country_list/domain/use_cases/cache_filter_state.dart';
import 'package:country_api_parser/features/country_list/domain/use_cases/get_countries.dart';
import 'package:country_api_parser/features/country_list/domain/use_cases/get_filtered_countries.dart';
import 'package:country_api_parser/features/country_list/domain/use_cases/remove_cached_country.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_event.dart';
part 'country_state.dart';
part 'country_bloc.freezed.dart';

const String serverErrorMessage = 'Server error occured';
const String localErrorMessage = 'Failed to retrieve cached data';

class CountriesBloc extends Bloc<CountryEvent, CountryState> {
  final GetCountries getCountries;
  final GetFilteredCountries getFilteredCountries;
  final RemoveCachedCountry removeCachedCountry;
  final CacheFilterState cacheFilterState;

  CountriesBloc({
    required this.getCountries,
    required this.getFilteredCountries,
    required this.removeCachedCountry,
    required this.cacheFilterState,
  }) : super(const LoadingCountryState());

  ErrorCountryState _getError(Failure failure) {
    return failure.when(
      server: () => const ErrorCountryState(errorMessage: serverErrorMessage),
      localData: () => const ErrorCountryState(errorMessage: localErrorMessage),
    );
  }

  Stream<CountryState> _loadData() async* {
    yield const LoadingCountryState();
    yield await getCountries(NoParams()).then(
      (failureOrCountries) => failureOrCountries.fold(
        (failure) => _getError(failure),
        (countries) => LoadedCountryState(countries: countries),
      ),
    );
  }

  Stream<CountryState> _removeCountry(Country countryToRemove) async* {
    final newState =
        await removeCachedCountry(RemoveParams(countryToRemove)).then(
      (value) => value.fold(
        (failure) => _getError(failure),
        (success) => state,
      ),
    );
    yield newState;
    if (newState is! ErrorCountryState) {
      yield await getFilteredCountries(NoParams()).then(
        (value) => value.fold(
          (failure) => _getError(failure),
          (countries) => LoadedCountryState(countries: countries),
        ),
      );
    }
  }

  Stream<CountryState> _handleKeyboardInput(String input) async* {
    EasyDebounce.cancel('country_bloc:input_timer');
    EasyDebounce.debounce(
        'country_bloc:input_timer', const Duration(milliseconds: 1500), () {
      add(InputAcceptedCountryEvent(input));
    });
  }

  Stream<CountryState> _inputAccepted(String input) async* {
    if (state is LoadedCountryState) {
      await cacheFilterState(FilterParams(input));
      final mState = state as LoadedCountryState;
      yield await getFilteredCountries(
        NoParams(),
      ).then(
        (value) => value.fold(
          (error) => const ErrorCountryState(errorMessage: 'Failed to filter'),
          (countries) => mState.copyWith(
            countries: countries,
          ),
        ),
      );
    }
  }

  Stream<CountryState> _keyboardSubmit(String input) async* {
    EasyDebounce.cancel('country_bloc:input_timer');
    add(InputAcceptedCountryEvent(input));
  }

  Stream<CountryState> _selectedCountry(Country country) async* {
    locator<RouteManager>().push('/country', country.name);
  }

  @override
  Stream<CountryState> mapEventToState(
    CountryEvent event,
  ) async* {
    yield* event.when(
      init: _loadData,
      selected: _selectedCountry,
      remove: _removeCountry,
      keyboardInput: _handleKeyboardInput,
      inputAccepted: _inputAccepted,
      keyboardSubmit: _keyboardSubmit,
    );
  }
}
