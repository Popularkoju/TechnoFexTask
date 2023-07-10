
import 'package:bloc/bloc.dart';
import 'package:countrylist/Features/CountryList/Domain/Models/country_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'country_to_local_event.dart';
part 'country_to_local_state.dart';

class CountryToLocal extends Bloc<AddcountrytolocalEvent, AddCountryState> {
 
  CountryToLocal() : super(AddCountryState([] )) {
    List<CountryModel> updatedCountries =[];
    on<AddCountryEvent>((event, emit){
      var countriesBox = Hive.box('countries');
      countriesBox.put(event.country.name, event.country);
      updatedCountries = List<CountryModel>.from(countriesBox.values);
      emit(AddCountryState(updatedCountries));
    });
    on<GetCountryLocal>((event, emit){
      var countriesBox = Hive.box('countries');
      updatedCountries = List<CountryModel>.from(countriesBox.values);
      emit(AddCountryState(updatedCountries));
    });
    on<ClearLocalData>((event, emit) {
      var countriesBox = Hive.box('countries');
      countriesBox.clear();
      updatedCountries.clear();
      emit(AddCountryState(updatedCountries));
    });

  }
}
