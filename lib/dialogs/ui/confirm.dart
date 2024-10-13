import 'package:flutter/material.dart';

class AppConfirm {
  final BuildContext ctx;
  final String? textCancel;
  final String? textOk;
  final Widget content;
  final Widget title;

  AppConfirm(this.ctx,
      {this.textCancel,
      this.textOk,
      required this.content,
      required this.title});

  Future<bool> show() async {
    var result = await showDialog<bool>(
        context: ctx,
        builder: (BuildContext context) => AlertDialog(
              backgroundColor: Colors.white,
              title: title,
              content: content,
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(ctx, false),
                  child: Text(textCancel ?? "Cancel"),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(ctx, true),
                  child: Text(textOk ?? "OK"),
                ),
              ],
            ));

    return result ?? false;
  }
}
