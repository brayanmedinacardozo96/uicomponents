import 'package:flutter/material.dart';
import 'package:uicomponents/loading/loading.dart';

const defaultColor = Color.fromARGB(255, 1, 137, 195);

class AppButtonWidget extends StatelessWidget {
  final String label;
  final Widget? child;
  final bool? loading;
  final Color? backgroundColor;
  final VoidCallback onPressed;

  const AppButtonWidget(
      {super.key,
      required this.label,
      required this.onPressed,
      this.backgroundColor,
      this.child,
      this.loading});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
        height: 60,
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor:
                backgroundColor ?? defaultColor, // Color de fondo del botón
          ),
          onPressed: loading == true ? () {} : onPressed,
          child: _buildChild(),
        ));
  }

  Widget _buildChild() {
    if (loading == true) {
      return const AppLoadingWidget();
    }
    if (child != null) {
      return child ?? const Text("...");
    }
    return Text(
      label,
      style: const TextStyle(color: Colors.white, fontSize: 16),
    );
  }
}
