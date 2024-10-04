import 'package:flutter/material.dart';

part './handler/pin_status.dart';

class AvatarStatusWidget extends StatelessWidget {
  final Widget child;
  final Color? color;
  final bool? isActive;
  const AvatarStatusWidget(
      {super.key, required this.child, this.color, this.isActive});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        child,
        isActive == true
            ? Positioned(
                top: 0,
                right: 0,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: _onlineStatus(color ?? Colors.green),
                ),
              )
            : const Text("")
      ],
    );
  }
}
