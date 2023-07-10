part of 'countries_bloc.dart';

abstract class CountriesEvent extends Equatable {}

class GetCountryList extends CountriesEvent {
  @override
  List<Object?> get props => [];
}

class UpdateCountryList extends CountriesEvent {
  int index;
  CountryModel country;

  UpdateCountryList(this.country, this.index);

  @override
  List<Object?> get props => [country];
}
