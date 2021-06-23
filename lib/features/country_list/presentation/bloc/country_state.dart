part of 'country_bloc.dart';

@freezed
class CountryState with _$CountryState {
  const factory CountryState.loading() = LoadingCountryState;
  const factory CountryState.loaded({
    required List<Country> countries,
  }) = LoadedCountryState;
  const factory CountryState.error({required String errorMessage}) =
      ErrorCountryState;
}
