import 'package:flutter/material.dart';

import '../interface/avatar_interface.dart';

class AvatarAliasStrategy implements AvatarInterface {
  final String avatar;
  final Color? bgColor;
  final double? size;
  AvatarAliasStrategy(this.avatar, this.bgColor, this.size);
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: bgColor ?? Colors.blueAccent,
          shape: BoxShape.circle,
        ),
        child: avatar.isEmpty
            ? Icon(
                Icons.person_outline_sharp,
                color: Colors.white,
                size: size ?? 18,
              )
            : Text(avatar,
                style: TextStyle(
                    fontSize: size ?? 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)));
  }
}
