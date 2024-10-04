import 'package:flutter/material.dart';

class AppContainerWidget extends StatelessWidget {
  final List<Color>? background;
  final List<Widget> children;

  const AppContainerWidget(
      {super.key, required this.children, this.background});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: background ??
                [const Color(0xFF004B80), const Color(0xFF96C83F)],
            stops: const [0, 1],
            begin: const AlignmentDirectional(0.87, -1),
            end: const AlignmentDirectional(-0.87, 1),
          ),
        ),
        alignment: Alignment.center, // const AlignmentDirectional(0, 0),
        child: SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: children)));
  }
}
