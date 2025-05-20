import 'package:flutter/material.dart';

import 'interfaces/dialog_service.dart';
import 'services/alert_dialog_service.dart';
import 'services/general_service.dart';

class DialogManagerGeneral {
  final BuildContext ctx;
  final Widget content;

  DialogManagerGeneral(this.ctx, {required this.content});

  Future showResponsiveDialog() async {
    final screenWidth = MediaQuery.of(ctx).size.width;
    DialogService dialogService;

    if (screenWidth >= 600) {
      dialogService = AlertDialogService(ctx: ctx, content: content);
    } else {
      dialogService = DialogGeneralService(ctx: ctx, content: content);
    }

    return await dialogService.appShowDialog();
  }
}
