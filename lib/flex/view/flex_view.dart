import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../handler/screen_size.dart';
import '../strategy/mobile_strategy.dart';
import '../strategy/web_strategy.dart';

class AppFlexWidget extends StatelessWidget {
  final double? height;
  final double? minWidth;
  final List<Widget> children;
  const AppFlexWidget(
      {super.key,
      required this.children,
      this.height = 90,
      this.minWidth = 600});
  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      if (isScreenSizeMovil(context, minWidth: minWidth!)) {
        return WebScreenStrategy(children: children, height: height)
            .build(context);
      } else {
        return WebScreenStrategy(children: children, isMobile: true)
            .build(context);
      }
    }

    if (isScreenSizeMovil(context, minWidth: minWidth!)) {
      return WebScreenStrategy(children: children, height: height)
          .build(context);
    }

    return MobileScreenStrategy(children).build(context);
  }
}
