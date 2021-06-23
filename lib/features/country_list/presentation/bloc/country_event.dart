part of 'country_bloc.dart';

@freezed
class CountryEvent with _$CountryEvent {
  const factory CountryEvent.init() = InitialCountryEvent;
  const factory CountryEvent.remove(Country country) = RemoveCountryEvent;
  const factory CountryEvent.selected(Country country) = SelectedCountryEvent;
  const factory CountryEvent.inputAccepted(String input) =
      InputAcceptedCountryEvent;
  const factory CountryEvent.keyboardInput(String input) =
      KeyboardInputCountryEvent;
  const factory CountryEvent.keyboardSubmit(String input) =
      KeyboardSubmitCountryEvent;
}
