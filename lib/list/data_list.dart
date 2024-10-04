import 'package:flutter/material.dart';

class ListDataWidget extends StatelessWidget {
  final List<Widget> children;
  const ListDataWidget({super.key, required this.children});

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: children,
      ));
}
