import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class GridSkeleton extends StatefulWidget {
  final double width;
  final double height;
  const GridSkeleton({super.key, required this.width, required this.height});

  @override
  GridSkeletonState createState() => GridSkeletonState();
}

class GridSkeletonState extends State<GridSkeleton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
                childAspectRatio: 1,
                crossAxisSpacing: 1,
                mainAxisSpacing: 1),
            itemCount: 20,
            itemBuilder: (BuildContext ctx, index) {
              return Stack(alignment: Alignment.center, children: [
                Shimmer.fromColors(
                    baseColor: Colors.grey.shade300,
                    highlightColor: Colors.grey.shade100,
                    enabled: true,
                    child: SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(  
                          children: [
                            Container(
                              width: widget.width,
                              height: widget.height,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )))
              ]);
            }));
  }
}
