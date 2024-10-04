import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppAvatarOnlyWidget extends StatelessWidget {
  const AppAvatarOnlyWidget({super.key});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: Container(
          width: 80.0,
          height: 80.0,
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
