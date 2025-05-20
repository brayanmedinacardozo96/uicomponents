import 'package:flutter/material.dart';

class AppBadge extends StatelessWidget {
  final String label;
  final Color? appBarColor;

  const AppBadge({super.key, required this.label, this.appBarColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        decoration: BoxDecoration(
          color: appBarColor ?? const Color(0xFFE7E7E7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min, // Ajusta el ancho al contenido
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
            const SizedBox(width: 8),
            const Icon(
              Icons.close,
              size: 16,
            )
          ],
        ));
  }
}
