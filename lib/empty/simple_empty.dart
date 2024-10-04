import 'package:flutter/material.dart';

class SimpleEmptyWidget extends StatelessWidget {
  final String text;
  final Widget? widget;
  const SimpleEmptyWidget({super.key, required this.text, this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: widget ??
                  const SizedBox(
                    height: 0,
                    width: 0,
                  ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey, fontSize: 24),
              ),
            )
          ],
        )

        /*Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            widget ??
                const SizedBox(
                  height: 0,
                  width: 0,
                ),
            
          ],
        )*/
        );
  }
}
