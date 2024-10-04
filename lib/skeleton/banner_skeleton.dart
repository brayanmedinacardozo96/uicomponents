import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uicomponents/skeleton/list_skeleton.dart';

class BannerSkeleton extends StatefulWidget {
  const BannerSkeleton({super.key});

  @override
  BannerSkeletonState createState() => BannerSkeletonState();
}

class BannerSkeletonState extends State<BannerSkeleton> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: const SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              //  BannerPlaceholder(),
              TitlePlaceholder(width: double.infinity),
            ],
          ),
        ));
  }
}
