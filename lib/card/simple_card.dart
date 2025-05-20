import 'package:flutter/material.dart';

class AppSimpleCardWidget extends StatelessWidget {
  final bool? hasDecoration;
  final List<Widget> children;
  const AppSimpleCardWidget(
      {super.key, required this.children, this.hasDecoration = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: double.infinity,
        constraints: const BoxConstraints(
          maxWidth: 570,
        ),
        decoration: hasDecoration == true
            ? BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 4,
                    color: Color(0x33000000),
                    offset: Offset(
                      0,
                      2,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(12),
              )
            : null,
        child: Align(
          alignment: const AlignmentDirectional(0, 0),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}
