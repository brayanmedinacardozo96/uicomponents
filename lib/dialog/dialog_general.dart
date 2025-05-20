import 'package:flutter/material.dart';

Future<dynamic> dialogGeneral(
    {required BuildContext ctx, required Widget child}) async {
  return await showGeneralDialog(
      barrierColor: Colors.black.withOpacity(0.5),
      transitionBuilder: (context, a1, a2, widget) {
        return Transform.scale(
          scale: a1.value,
          child: Opacity(opacity: a1.value, child:
           child
           ),
        );
      },
      transitionDuration: const Duration(milliseconds: 200),
      barrierDismissible: true,
      barrierLabel: '',
      context: ctx,
      pageBuilder: (context, animation1, animation2) {
        return const Text("");
      });
}
