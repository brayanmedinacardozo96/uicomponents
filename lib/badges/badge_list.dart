import 'package:flutter/material.dart';
import 'badge.dart';

class AppBadgeList extends StatelessWidget {
  final List<String> items;

  const AppBadgeList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 12),
        child: SizedBox(
          height: 40, // Ajusta la altura según sea necesario
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: AppBadge(label: items[index]),
              );
            },
          ),
        ));
  }
}
