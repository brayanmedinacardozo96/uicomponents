import 'package:flutter/material.dart';
import 'package:uicomponents/uicomponents.dart';
import '../interfaces/dialog_service.dart';

class ModalBottomSheetService implements DialogService {
  final BuildContext ctx;
  final Widget content;

  ModalBottomSheetService({required this.ctx, required this.content});

  @override
  Future appShowDialog() async {
    var result = await showModalBottomSheet(
      backgroundColor: Colors.white,
      context: ctx,
      builder: (BuildContext context) {
        return AppPopover(
          child: content,
        );
      },
    );

    return result;
  }
}
