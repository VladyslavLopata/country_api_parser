part of 'country_bloc_bloc.dart';

@freezed
class CountryBlocState with _$CountryBlocState {
  const factory CountryBlocState.loading() = LoadingConcreteCountryState;
  const factory CountryBlocState.loaded({
    required Country country,
  }) = LoadedConcreteCountryState;
  const factory CountryBlocState.error({
    required String errorMessage,
  }) = ErrorConcreteCountryState;
}
