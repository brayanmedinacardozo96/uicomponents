import 'package:flutter/material.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          margin: const EdgeInsets.only(right: 10),
          width: 20,
          height: 20,
          child: const CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.white,
            semanticsLabel: 'Circular progress indicator',
          )),
      const Text(
        "Please Wait...",
        style: TextStyle(color: Colors.white),
      )
    ]);
  }
}
