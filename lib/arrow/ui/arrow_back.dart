import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppArrowBackWidget extends StatelessWidget {
  final Function()? onTap;
  final Color? color;
  const AppArrowBackWidget({super.key, this.onTap, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: onTap, child: _buildIco());
  }

  Widget _buildIco() {
    if (kIsWeb) {
      return Icon(Icons.close, color: color);
    }
    return Platform.isIOS
        ? Icon(Icons.arrow_back_ios, color: color)
        : Icon(Icons.arrow_back, color: color);
  }
}
