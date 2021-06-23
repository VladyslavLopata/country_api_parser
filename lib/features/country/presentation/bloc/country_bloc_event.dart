part of 'country_bloc_bloc.dart';

@freezed
class CountryBlocEvent with _$CountryBlocEvent {
  const factory CountryBlocEvent.init({
    required String countryName,
  }) = LoadConcreteCountryEvent;
}
