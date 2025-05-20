import 'package:flutter/material.dart';

import 'interfaces/dialog_service.dart';
import 'services/alert_dialog_service.dart';
import 'services/modal_bottom_service.dart';

class DialogManager {
  final BuildContext ctx;
  final Widget content;

  DialogManager(this.ctx, {required this.content});

  Future showResponsiveDialog() async {
    final screenWidth = MediaQuery.of(ctx).size.width;

    DialogService dialogService;

    if (screenWidth >= 600) {
      dialogService = AlertDialogService(ctx: ctx, content: content);
    } else {
      dialogService = ModalBottomSheetService(ctx: ctx, content: content);
    }

    return await dialogService.appShowDialog();
  }
}
