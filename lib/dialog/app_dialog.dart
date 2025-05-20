import 'package:flutter/material.dart';
import 'package:uicomponents/arrow/ui/arrow_back.dart';
import 'package:uicomponents/dialog/dialog_general.dart';
import 'package:uicomponents/handler/screen_size.dart';

class AppDialog {
  static dialog({required BuildContext ctx, required Widget child}) {
    final isDestok = isScreenSizeMovil(ctx);
    return isDestok
        ? showDialog<void>(
            context: ctx,
            builder: (BuildContext context) {
              return AlertDialog(
                  backgroundColor: Colors.white,
                  title: _buildTitle(context),
                  content: child);
            },
          )
        : dialogGeneral(ctx: ctx, child: child);
  }

  static Widget _buildTitle(BuildContext ctx) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [AppArrowBackWidget(onTap: () => Navigator.of(ctx).pop())],
    );
  }
}
