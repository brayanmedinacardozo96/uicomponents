import 'package:flutter/material.dart';
import '../interface/avatar_interface.dart';
import 'avatar_alias_strategy.dart';

class AvatarNetworkStrategy implements AvatarInterface {
  final String avatar;
  final String alias;
  final Color? bgColor;
  final double? size;
  AvatarNetworkStrategy(this.avatar, this.alias, this.bgColor, this.size);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          avatar,
          height: 60,
          width: 60,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) {
              return child;
            }
            return Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                value: loadingProgress.expectedTotalBytes != null
                    ? loadingProgress.cumulativeBytesLoaded /
                        loadingProgress.expectedTotalBytes!
                    : null,
              ),
            );
          },
          errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) =>
              AvatarAliasStrategy(alias, bgColor, size).build(context),
        ));
  }
}
