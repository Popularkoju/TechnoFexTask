
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../Domain/Models/country_model.dart';
import '../../repo/ApiRepository.dart';

part 'countries_event.dart';

part 'countries_state.dart';

class CountriesBloc extends Bloc<CountriesEvent, CountriesState> {
  CountriesBloc() : super(CountriesInitial()) {
    final ApiRepository _apiRepository = ApiRepository();
    List<CountryModel> mList = [];
    on<GetCountryList>((event, emit) async {
      try {
        emit(CountryLoading());
        mList = await _apiRepository.fetchCountryList();
        emit(CountryLoaded(mList));
        if (mList == null) {
          emit(const CountryError("NO DATA"));
        }
      } on NetworkError {
        emit(
            const CountryError("Failed to fetch data. is your device online?"));
      }
    });

    on<UpdateCountryList>((event, emit) {
      mList[event.index] = event.country;
      emit(CountryLoaded(mList));
    });
  }
}
