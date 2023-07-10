import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';
part 'country_model.g.dart';


@HiveType(typeId: 0)
class CountryModel extends HiveObject with EquatableMixin {
  @HiveField(0)
  String name;

  CountryModel(this.name);

  factory CountryModel.fromJson(Map<String, dynamic> json) {
    return CountryModel(json["country_name"]);
  }


  @override
  List<Object?> get props =>[name];
}
