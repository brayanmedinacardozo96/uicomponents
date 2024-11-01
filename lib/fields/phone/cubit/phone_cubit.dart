import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../models/models.dart';
import '../constants/countries.dart';

class PhoneCubit extends Cubit<Country> {
  String codePhone = "CO";
  PhoneCubit() : super(countries.first);

  void set(Country data) async {
    codePhone = data.code;
    emit(data);
  }

  void init(String code) async {
    Country? country;

    try {
      code = code.isEmpty ? "CO" : code;
      country = countries.where((b) => b.code == code).first;
      codePhone = country.code;
    } catch (e) {
      country = countries.where((b) => b.code == "CO").first;
      codePhone = country.code;
    }

    emit(country);
  }
}
