import 'package:flutter/material.dart';

import '../interface/avatar_interface.dart';
import '../strategys/avatar_alias_strategy.dart';
import '../strategys/avatar_network_strategy.dart';

class AvatarWidget extends StatelessWidget {
  final String avatar;
  final String alias;
  final Color? bgColor;
  final double? size;
  const AvatarWidget(
      {super.key,
      required this.avatar,
      required this.alias,
      this.bgColor,
      this.size});

  @override
  Widget build(BuildContext context) {
    AvatarInterface avatarInterface;

    if (avatar.isNotEmpty) {
      avatarInterface = AvatarNetworkStrategy(avatar, alias, bgColor, size);
    } else {
      avatarInterface = AvatarAliasStrategy(alias, bgColor, size);
    }

    return avatarInterface.build(context);
  }
}
