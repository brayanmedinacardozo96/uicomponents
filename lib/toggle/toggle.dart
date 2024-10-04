import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../handler/screen_size.dart';
import 'toggle_cubit.dart';
import 'toggle_interface.dart';

class TransactionToggle extends StatefulWidget {
  final IToggle action;
  final List<Widget> children;
  final int defaultIndex;
  final double width;

  const TransactionToggle({
    super.key,
    required this.action,
    required this.children,
    required this.defaultIndex,
    required this.width,
  });

  @override
  State<StatefulWidget> createState() {
    return _TransactionToggleState();
  }
}

class _TransactionToggleState extends State<TransactionToggle> {
  final ToggleCubit _toggleCubit = ToggleCubit();

  @override
  void initState() {
    _toggleCubit.currentIndex(widget.defaultIndex, widget.children.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocProvider(
          create: (context) => _toggleCubit,
          child:
              BlocBuilder<ToggleCubit, List<bool>>(builder: (context, state) {
            return ToggleButtons(
              textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              onPressed: (int index) => onCurrentIndex(index),
              isSelected: state,
              borderRadius: BorderRadius.circular(30),
              selectedColor: Colors.white,
              fillColor: Colors.blue,
              //  borderColor: CustomColor.whiteShade1,
              selectedBorderColor: Colors.blue,
              borderWidth: 2,
              splashColor: Colors.teal[100],
              constraints: BoxConstraints.expand(
                  width: isScreenSizeMovil(context) ? widget.width : 150,
                  height: 40),
              children: widget.children,
            );
          })),
    );
  }

  onCurrentIndex(int index) {
    _toggleCubit.currentIndex(index, widget.children.length);
    widget.action.currentToggleIndex(index);
  }
}
