import 'package:flutter/material.dart';

import '../models/message_body.dart';

List<Widget> generateTextWidgets(BuildContext ctx, List<MessageBody> parts) {
  List<Widget> widgets = [];
  for (var part in parts) {
    TextStyle textStyle = const TextStyle(fontSize: 16);
    if (part.isbold == true) {
      textStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    }

    if (part.text != null) {
      widgets.add(Text(part.text ?? "", style: textStyle));
    }

    if (part.richText != null) {
      widgets.add(_generateRichTextWidgets(ctx, part.richText ?? []));
    }

    widgets.add(const SizedBox(
      height: 5,
    ));
  }

  return widgets;
}

_generateRichTextWidgets(BuildContext ctx, List<Texts> richText) {
  List<TextSpan> widgets = [];

  for (var part in richText) {
    TextStyle textStyle = const TextStyle(fontSize: 16);
    if (part.isbold == true) {
      textStyle = const TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    }

    widgets.add(TextSpan(text: part.text, style: textStyle));
  }

  return RichText(
    text: TextSpan(style: DefaultTextStyle.of(ctx).style, children: widgets),
  );
}
