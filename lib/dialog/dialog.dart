import 'package:flutter/material.dart';
import 'dialog_general.dart';
import 'models/router_dialog.dart';

Future<dynamic> openDialog(
    {required BuildContext ctx,
    required String routeName,
    required List<RouterDialog> dialogs,
    dynamic parameter}) async {
  RouterDialog dialog =
      dialogs.firstWhere((dialog) => dialog.name == routeName);
  Widget child = dialog.builder.build(ctx, parameter);
  return await dialogGeneral(ctx: ctx, child: child);
}
