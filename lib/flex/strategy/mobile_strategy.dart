import 'package:flutter/material.dart';
import '../../interface/custom_build.dart';


class MobileScreenStrategy implements ICustomWidget {
  final List<Widget> children;

  MobileScreenStrategy(this.children);

  @override
  Widget build(BuildContext context) {
    return Flex(
        crossAxisAlignment: CrossAxisAlignment.center,
        direction: Axis.vertical,
        children: children);
  }
}