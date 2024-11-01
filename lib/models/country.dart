import '../fields/phone/constants/countries.dart';
import 'model_interface.dart';

class CountryModel implements JsonSerializable {
  List<Country>? data;

  CountryModel({this.data});

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Country>[];
      json['data'].forEach((v) {
        data!.add(Country.json(v));
      });
    }
  }
}

class Country implements JsonSerializable {
  String name = "";
  String? flag;
  String code = "";
  String dialCode = "";
  int? minLength;
  int? maxLength;

  Country({
    required this.name,
    required this.flag,
    required this.code,
    required this.dialCode,
    required this.minLength,
    required this.maxLength,
  });

  Country.json(Map<String, dynamic> json) {
    fromJson(json);
  }

  @override
  fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    final Country country = _infoCountry();
    flag = country.flag;
    dialCode = country.dialCode;
    minLength = country.minLength;
    maxLength = country.maxLength;
  }

  Country _infoCountry() {
    return countries.where((b) => b.code == code).first;
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    return data;
  }
}
