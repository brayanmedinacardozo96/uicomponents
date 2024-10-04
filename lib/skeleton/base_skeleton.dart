import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppBaseSkeletonWidget extends StatelessWidget {
  final Widget child;
  const AppBaseSkeletonWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: child);
}
