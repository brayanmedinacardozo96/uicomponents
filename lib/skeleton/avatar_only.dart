import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppAvatarOnlyWidget extends StatelessWidget {
  final double? width;
  final double? height;
  const AppAvatarOnlyWidget({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: Container(
          width: width ?? 80.0,
          height: height ?? 80.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.red,
              width: 2.0,
            ),
          ),
        ),
      );
}
