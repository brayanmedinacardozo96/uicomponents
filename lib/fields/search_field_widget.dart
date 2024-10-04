import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../constant/colors.dart';
import '../cubit/yes_no_cubit.dart';
import '../interface/pressed.dart';

Color _backgroundlocal = bgField;

class SearchFieldWidget extends StatelessWidget {
  final IPressed pressed;
  final TextEditingController textController;
  final Color selectedItemColor;
  final Color? background;
  final String hintText;
  final bool? readOnly;

  const SearchFieldWidget(
      {super.key,
      required this.pressed,
      required this.textController,
      this.background,
      required this.selectedItemColor,
      required this.hintText,
      this.readOnly});

  @override
  Widget build(BuildContext context) {
    YesNoCubit seledtedCubit = YesNoCubit();
    return BlocProvider<YesNoCubit>(
        create: (_) => seledtedCubit,
        child: BlocBuilder<YesNoCubit, bool>(builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
            child: Card(
                color: background,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(25), // Set the border radius here
                ),
                child: _buildField(ctx: context, isSelected: state)),
          );
        }));
  }

  Widget _buildField({required BuildContext ctx, bool isSelected = false}) {
    return TextField(
      readOnly: readOnly ?? false,
      onTap: () => pressed.onITap(null),
      controller: textController,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey.shade600),
          suffixIcon: _buildSuffixIcon(isSelected),
          filled: true,
          fillColor: background ?? _backgroundlocal,
          contentPadding: const EdgeInsets.all(15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: background ?? _backgroundlocal)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: background ?? _backgroundlocal))),
      onChanged: (value) {
        ctx.read<YesNoCubit>().set(value.isNotEmpty);
      },
    );
  }

  Widget _buildSuffixIcon(bool isSelected) {
    return IconButton.filled(
        // padding: EdgeInsets.all(16.0),
        disabledColor: Colors.black,
        color: isSelected ? Colors.white : Colors.black,
        isSelected: isSelected,
        icon: const Icon(Icons.search),
        selectedIcon: const Icon(Icons.send_rounded),
        style: IconButton.styleFrom(
          backgroundColor:
              isSelected ? selectedItemColor : background ?? _backgroundlocal,
        ),
        onPressed: () => pressed.onIPressed(textController.text));
  }
}
