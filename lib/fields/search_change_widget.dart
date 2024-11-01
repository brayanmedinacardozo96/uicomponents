import 'package:flutter/material.dart';
import 'fields.dart';


class AppFieldSearchChange extends StatelessWidget {
  final Function(String?)? onChange;
  final TextEditingController? controller;
  final String label;
  final Color? containerColor;
  final Color? borderSideColor;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? hintText;
  const AppFieldSearchChange(
      {super.key,
      this.onChange,
      this.controller,
      required this.label,
      this.containerColor,
      this.borderSideColor,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return UIFieldText(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        label: label,
        hintText: hintText,
        controller: controller,
        containerColor: containerColor,
        onChange: onChange,
        borderSideColor: borderSideColor);
  }
}
