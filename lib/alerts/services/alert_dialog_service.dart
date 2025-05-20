import 'package:flutter/material.dart';

import '../interfaces/dialog_service.dart';

class AlertDialogService implements DialogService {
  final BuildContext ctx;
  final Widget content;

  AlertDialogService({required this.ctx, required this.content});

  @override
  Future appShowDialog() async {
    var result = await showDialog(
      context: ctx,
      builder: (BuildContext context) {
        return AlertDialog(backgroundColor: Colors.white, content: content);
      },
    );

    return result;
  }
}
