import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle headlineLarge(BuildContext context) =>
      Theme.of(context).textTheme.headlineLarge!.copyWith(
            fontFamily: 'Outfit',
            fontWeight: FontWeight.bold,
            letterSpacing: 0.0,
          );

  static TextStyle labelMedium(BuildContext context) =>
      Theme.of(context).textTheme.labelMedium!.copyWith(
            fontFamily: 'Readex Pro',
            letterSpacing: 0.0,
          );

  static TextStyle h1({Color color = Colors.black}) {
    return TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle h2({Color color = Colors.black}) {
    return TextStyle(
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle h3({Color color = Colors.black}) {
    return TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle h4({Color color = Colors.black}) {
    return TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle h5({Color color = Colors.black}) {
    return TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle h6({Color color = Colors.black}) {
    return TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle p({Color color = Colors.black}) {
    return TextStyle(
      fontSize: 14.0,
      color: color,
    );
  }
}
