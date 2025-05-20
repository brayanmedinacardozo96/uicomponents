import 'package:flutter/material.dart';

import '../interfaces/dialog_service.dart';

class DialogGeneralService implements DialogService {
  final BuildContext ctx;
  final Widget content;

  DialogGeneralService({required this.ctx, required this.content});

  @override
  Future appShowDialog() async {
    return await showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(opacity: a1.value, child: content),
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
}
