import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppArrowIcon extends Icon {
  const AppArrowIcon(super.icon, {super.key, super.color, super.size});

  @override
  Widget build(BuildContext context) {
    return _buildIco();
  }

  Widget _buildIco() {
    if (kIsWeb) {
      return Icon(Icons.arrow_back, color: color);
    }
    return Platform.isIOS
        ? Icon(
            Icons.arrow_back_ios,
            color: color,
            size: size,
          )
        : Icon(
            Icons.arrow_back,
            color: color,
            size: size,
          );
  }
}
