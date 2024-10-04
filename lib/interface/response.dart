import 'package:flutter/material.dart';

abstract class IResponse {
  void onIResponse(BuildContext ctx, String key, dynamic data);
}
