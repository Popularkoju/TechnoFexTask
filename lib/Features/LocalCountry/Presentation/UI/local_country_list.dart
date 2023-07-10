import 'package:countrylist/Features/LocalCountry/Presentation/bloc/coutry_to_local_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocalCountryList extends StatelessWidget {
  const LocalCountryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CountryToLocal countryBloc = CountryToLocal();
    countryBloc.add(GetCountryLocal());
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Local Data"),
        centerTitle: true,
      ),
      body: Builder(builder: (context) {
        return BlocBuilder<CountryToLocal, AddCountryState>(
          bloc: countryBloc,
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: ListView.builder(
                      itemCount: state.countries.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(8),
                          child: ListTile(
                            title: Text(state.countries[index].name),
                          ),
                        );
                      }),
                ),
                ElevatedButton(
                    onPressed: () {
                      countryBloc.add(ClearLocalData());
                    },
                    child: Text("Clear data"))
              ],
            );
          },
        );
      }),
    ));
  }
}
