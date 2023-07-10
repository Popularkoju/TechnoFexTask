part of 'countries_bloc.dart';

abstract class CountriesState {
  const CountriesState();
}

class CountriesInitial extends CountriesState {}

class CountryLoading extends CountriesState {}

class CountryLoaded extends CountriesState {
  final List<CountryModel> countryModelList;

  const CountryLoaded(this.countryModelList);
}

class CountryError extends CountriesState {
  final String? message;

  const CountryError(this.message);
}
