import 'package:flutter/material.dart';

const required = {
  "en": {"required": "Required"},
  "es": {"required": "Requerido"},
};

class UtlValidation {
  final BuildContext context;
  final String? lang;
  int minText = 0;
  bool isRequiered;
  UtlValidation(this.context,
      {this.lang = "en", this.minText = 0, this.isRequiered = true});

  String? requiered(String? value) {
    if (value == null || value.isEmpty) {
      return _getTranslation(required, 'required');
    }
    return null;
  }

  String? validateEmail(String? value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regex = RegExp(pattern);

    if (value == null || value.isEmpty) {
      return _getTranslation(required, 'required');
    } else if (!regex.hasMatch(value)) {
      return "*";
    } else {
      return null;
    }
  }

  String? password(String? value) {
    if (value == null || value.isEmpty) {
      return _getTranslation(required, 'required');
    }

    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{6,}$';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      return "*";
    }

    return null;
  }

  String? requieredMin(String? value) {
    if (value == null || value.isEmpty) {
      return _getTranslation(required, 'required');
    }
    if (value.length < minText) {
      return 'Minimum $minText characters';
    }
    return null;
  }

  String? url(String? value) {
    if (!isRequiered) {
      return null;
    }
    if (value == null && isRequiered) {
      return " ";
      //AppLocalizations.of(context)!.msEmptyText;
    }
    try {
      if (!Uri.parse(value!).isAbsolute) {
        return 'Invalid URL';
      }
    } catch (e) {
      return 'Invalid URL';
    }

    return null;
  }

  String _getTranslation(data, String key) {
    return data[lang]?[key] ?? '';
  }
}
