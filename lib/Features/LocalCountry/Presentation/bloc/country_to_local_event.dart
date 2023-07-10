part of 'coutry_to_local_bloc.dart';

@immutable
abstract class AddcountrytolocalEvent {}

class AddCountryEvent extends AddcountrytolocalEvent {
  final CountryModel country;
  AddCountryEvent(this.country);
}
class GetCountryLocal extends AddcountrytolocalEvent {
}
class ClearLocalData extends AddcountrytolocalEvent {
}