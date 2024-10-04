import 'package:flutter/material.dart';
import '../../interface/custom_build.dart';

class WebScreenStrategy implements ICustomWidget {
  final double? height;
  final List<Widget> children;
  final bool? isMobile;

  WebScreenStrategy(
      {required this.children, this.isMobile = false, this.height = 90});

  @override
  Widget build(BuildContext context) {
    return isMobile == true
        ? Column(
            children: children,
          )
        : SizedBox(
            height: height,
            width: MediaQuery.of(context).size.width,
            child: Flex(
                //crossAxisAlignment: CrossAxisAlignment.center,
                direction: Axis.horizontal,
                children:
                    children.map((e) => Expanded(flex: 1, child: e)).toList()));
  }
}
