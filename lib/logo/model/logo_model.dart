import 'package:flutter/material.dart';

enum LogoType { network, asset }

class Logo {
  LogoType type;
  String source;
  double? height;
  double? width;
  Logo(
      {required this.type,
      required this.source,
      this.height = 200,
      this.width = 200});
}

class LoginLabel {
  String user;
  String password;
  LoginLabel(this.user, this.password);
}

class LoginButton {
  String label;
  Color? background;
  bool? loading;
  LoginButton({required this.label, this.background, this.loading});
}

class LoginOptionFooter {
  List<Widget>? children;
  bool? showRegister;
  bool? showRecover;
  VoidCallback? onRegister;
  VoidCallback? onRecover;
  LoginOptionFooter(
      {this.showRegister = true,
      this.showRecover = true,
      this.children,
      this.onRecover,
      this.onRegister});
}

class ParameterResetPassword {
  bool? end;
  bool loading;
  Logo logo;
  LoginButton button;
  List<Color>? background;
  ParameterResetPassword(
      {required this.logo,
      required this.button,
      required this.loading,
      this.end});
}

class ParameterLogin {
  BuildContext ctx;
  String user;
  String password;
  Logo? logo;
  LoginLabel labels;
  LoginButton button;
  LoginOptionFooter? optionFooter;
  List<Color>? background;

  ParameterLogin(
    this.ctx, {
    this.logo,
    required this.labels,
    required this.button,
    this.optionFooter,
    this.background,
    required this.user,
    required this.password,
  });
}
