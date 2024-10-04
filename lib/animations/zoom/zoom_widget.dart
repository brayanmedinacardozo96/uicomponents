import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'zoom_cubit.dart';

class AppZoomWidget extends StatelessWidget {
  final Widget child;
  const AppZoomWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ZoomCubit(),
      child: AppZoom(child: child),
    );
  }
}

class AppZoom extends StatelessWidget {
  final Widget child;
  const AppZoom({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: MouseRegion(
            onEnter: (_) => context.read<ZoomCubit>().zoomIn(),
            onExit: (_) => context.read<ZoomCubit>().zoomOut(),
            child: BlocBuilder<ZoomCubit, double>(
              builder: (context, state) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  transform: Matrix4.identity()..scale(state),
                  child: child,
                );
              },
            )));
  }
}
