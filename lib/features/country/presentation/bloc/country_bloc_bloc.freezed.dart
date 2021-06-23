// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'country_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CountryBlocEventTearOff {
  const _$CountryBlocEventTearOff();

  LoadConcreteCountryEvent init({required String countryName}) {
    return LoadConcreteCountryEvent(
      countryName: countryName,
    );
  }
}

/// @nodoc
const $CountryBlocEvent = _$CountryBlocEventTearOff();

/// @nodoc
mixin _$CountryBlocEvent {
  String get countryName => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryName) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryName)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCountryEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCountryEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CountryBlocEventCopyWith<CountryBlocEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryBlocEventCopyWith<$Res> {
  factory $CountryBlocEventCopyWith(
          CountryBlocEvent value, $Res Function(CountryBlocEvent) then) =
      _$CountryBlocEventCopyWithImpl<$Res>;
  $Res call({String countryName});
}

/// @nodoc
class _$CountryBlocEventCopyWithImpl<$Res>
    implements $CountryBlocEventCopyWith<$Res> {
  _$CountryBlocEventCopyWithImpl(this._value, this._then);

  final CountryBlocEvent _value;
  // ignore: unused_field
  final $Res Function(CountryBlocEvent) _then;

  @override
  $Res call({
    Object? countryName = freezed,
  }) {
    return _then(_value.copyWith(
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $LoadConcreteCountryEventCopyWith<$Res>
    implements $CountryBlocEventCopyWith<$Res> {
  factory $LoadConcreteCountryEventCopyWith(LoadConcreteCountryEvent value,
          $Res Function(LoadConcreteCountryEvent) then) =
      _$LoadConcreteCountryEventCopyWithImpl<$Res>;
  @override
  $Res call({String countryName});
}

/// @nodoc
class _$LoadConcreteCountryEventCopyWithImpl<$Res>
    extends _$CountryBlocEventCopyWithImpl<$Res>
    implements $LoadConcreteCountryEventCopyWith<$Res> {
  _$LoadConcreteCountryEventCopyWithImpl(LoadConcreteCountryEvent _value,
      $Res Function(LoadConcreteCountryEvent) _then)
      : super(_value, (v) => _then(v as LoadConcreteCountryEvent));

  @override
  LoadConcreteCountryEvent get _value =>
      super._value as LoadConcreteCountryEvent;

  @override
  $Res call({
    Object? countryName = freezed,
  }) {
    return _then(LoadConcreteCountryEvent(
      countryName: countryName == freezed
          ? _value.countryName
          : countryName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadConcreteCountryEvent implements LoadConcreteCountryEvent {
  const _$LoadConcreteCountryEvent({required this.countryName});

  @override
  final String countryName;

  @override
  String toString() {
    return 'CountryBlocEvent.init(countryName: $countryName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadConcreteCountryEvent &&
            (identical(other.countryName, countryName) ||
                const DeepCollectionEquality()
                    .equals(other.countryName, countryName)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(countryName);

  @JsonKey(ignore: true)
  @override
  $LoadConcreteCountryEventCopyWith<LoadConcreteCountryEvent> get copyWith =>
      _$LoadConcreteCountryEventCopyWithImpl<LoadConcreteCountryEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String countryName) init,
  }) {
    return init(countryName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String countryName)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(countryName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadConcreteCountryEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadConcreteCountryEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class LoadConcreteCountryEvent implements CountryBlocEvent {
  const factory LoadConcreteCountryEvent({required String countryName}) =
      _$LoadConcreteCountryEvent;

  @override
  String get countryName => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadConcreteCountryEventCopyWith<LoadConcreteCountryEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CountryBlocStateTearOff {
  const _$CountryBlocStateTearOff();

  LoadingConcreteCountryState loading() {
    return const LoadingConcreteCountryState();
  }

  LoadedConcreteCountryState loaded({required Country country}) {
    return LoadedConcreteCountryState(
      country: country,
    );
  }

  ErrorConcreteCountryState error({required String errorMessage}) {
    return ErrorConcreteCountryState(
      errorMessage: errorMessage,
    );
  }
}

/// @nodoc
const $CountryBlocState = _$CountryBlocStateTearOff();

/// @nodoc
mixin _$CountryBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Country country) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Country country)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingConcreteCountryState value) loading,
    required TResult Function(LoadedConcreteCountryState value) loaded,
    required TResult Function(ErrorConcreteCountryState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingConcreteCountryState value)? loading,
    TResult Function(LoadedConcreteCountryState value)? loaded,
    TResult Function(ErrorConcreteCountryState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CountryBlocStateCopyWith<$Res> {
  factory $CountryBlocStateCopyWith(
          CountryBlocState value, $Res Function(CountryBlocState) then) =
      _$CountryBlocStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CountryBlocStateCopyWithImpl<$Res>
    implements $CountryBlocStateCopyWith<$Res> {
  _$CountryBlocStateCopyWithImpl(this._value, this._then);

  final CountryBlocState _value;
  // ignore: unused_field
  final $Res Function(CountryBlocState) _then;
}

/// @nodoc
abstract class $LoadingConcreteCountryStateCopyWith<$Res> {
  factory $LoadingConcreteCountryStateCopyWith(
          LoadingConcreteCountryState value,
          $Res Function(LoadingConcreteCountryState) then) =
      _$LoadingConcreteCountryStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingConcreteCountryStateCopyWithImpl<$Res>
    extends _$CountryBlocStateCopyWithImpl<$Res>
    implements $LoadingConcreteCountryStateCopyWith<$Res> {
  _$LoadingConcreteCountryStateCopyWithImpl(LoadingConcreteCountryState _value,
      $Res Function(LoadingConcreteCountryState) _then)
      : super(_value, (v) => _then(v as LoadingConcreteCountryState));

  @override
  LoadingConcreteCountryState get _value =>
      super._value as LoadingConcreteCountryState;
}

/// @nodoc

class _$LoadingConcreteCountryState implements LoadingConcreteCountryState {
  const _$LoadingConcreteCountryState();

  @override
  String toString() {
    return 'CountryBlocState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is LoadingConcreteCountryState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Country country) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Country country)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingConcreteCountryState value) loading,
    required TResult Function(LoadedConcreteCountryState value) loaded,
    required TResult Function(ErrorConcreteCountryState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingConcreteCountryState value)? loading,
    TResult Function(LoadedConcreteCountryState value)? loaded,
    TResult Function(ErrorConcreteCountryState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingConcreteCountryState implements CountryBlocState {
  const factory LoadingConcreteCountryState() = _$LoadingConcreteCountryState;
}

/// @nodoc
abstract class $LoadedConcreteCountryStateCopyWith<$Res> {
  factory $LoadedConcreteCountryStateCopyWith(LoadedConcreteCountryState value,
          $Res Function(LoadedConcreteCountryState) then) =
      _$LoadedConcreteCountryStateCopyWithImpl<$Res>;
  $Res call({Country country});
}

/// @nodoc
class _$LoadedConcreteCountryStateCopyWithImpl<$Res>
    extends _$CountryBlocStateCopyWithImpl<$Res>
    implements $LoadedConcreteCountryStateCopyWith<$Res> {
  _$LoadedConcreteCountryStateCopyWithImpl(LoadedConcreteCountryState _value,
      $Res Function(LoadedConcreteCountryState) _then)
      : super(_value, (v) => _then(v as LoadedConcreteCountryState));

  @override
  LoadedConcreteCountryState get _value =>
      super._value as LoadedConcreteCountryState;

  @override
  $Res call({
    Object? country = freezed,
  }) {
    return _then(LoadedConcreteCountryState(
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as Country,
    ));
  }
}

/// @nodoc

class _$LoadedConcreteCountryState implements LoadedConcreteCountryState {
  const _$LoadedConcreteCountryState({required this.country});

  @override
  final Country country;

  @override
  String toString() {
    return 'CountryBlocState.loaded(country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedConcreteCountryState &&
            (identical(other.country, country) ||
                const DeepCollectionEquality().equals(other.country, country)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(country);

  @JsonKey(ignore: true)
  @override
  $LoadedConcreteCountryStateCopyWith<LoadedConcreteCountryState>
      get copyWith =>
          _$LoadedConcreteCountryStateCopyWithImpl<LoadedConcreteCountryState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Country country) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Country country)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingConcreteCountryState value) loading,
    required TResult Function(LoadedConcreteCountryState value) loaded,
    required TResult Function(ErrorConcreteCountryState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingConcreteCountryState value)? loading,
    TResult Function(LoadedConcreteCountryState value)? loaded,
    TResult Function(ErrorConcreteCountryState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedConcreteCountryState implements CountryBlocState {
  const factory LoadedConcreteCountryState({required Country country}) =
      _$LoadedConcreteCountryState;

  Country get country => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedConcreteCountryStateCopyWith<LoadedConcreteCountryState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorConcreteCountryStateCopyWith<$Res> {
  factory $ErrorConcreteCountryStateCopyWith(ErrorConcreteCountryState value,
          $Res Function(ErrorConcreteCountryState) then) =
      _$ErrorConcreteCountryStateCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

/// @nodoc
class _$ErrorConcreteCountryStateCopyWithImpl<$Res>
    extends _$CountryBlocStateCopyWithImpl<$Res>
    implements $ErrorConcreteCountryStateCopyWith<$Res> {
  _$ErrorConcreteCountryStateCopyWithImpl(ErrorConcreteCountryState _value,
      $Res Function(ErrorConcreteCountryState) _then)
      : super(_value, (v) => _then(v as ErrorConcreteCountryState));

  @override
  ErrorConcreteCountryState get _value =>
      super._value as ErrorConcreteCountryState;

  @override
  $Res call({
    Object? errorMessage = freezed,
  }) {
    return _then(ErrorConcreteCountryState(
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorConcreteCountryState implements ErrorConcreteCountryState {
  const _$ErrorConcreteCountryState({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'CountryBlocState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ErrorConcreteCountryState &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @JsonKey(ignore: true)
  @override
  $ErrorConcreteCountryStateCopyWith<ErrorConcreteCountryState> get copyWith =>
      _$ErrorConcreteCountryStateCopyWithImpl<ErrorConcreteCountryState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(Country country) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(Country country)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingConcreteCountryState value) loading,
    required TResult Function(LoadedConcreteCountryState value) loaded,
    required TResult Function(ErrorConcreteCountryState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingConcreteCountryState value)? loading,
    TResult Function(LoadedConcreteCountryState value)? loaded,
    TResult Function(ErrorConcreteCountryState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorConcreteCountryState implements CountryBlocState {
  const factory ErrorConcreteCountryState({required String errorMessage}) =
      _$ErrorConcreteCountryState;

  String get errorMessage => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorConcreteCountryStateCopyWith<ErrorConcreteCountryState> get copyWith =>
      throw _privateConstructorUsedError;
}
