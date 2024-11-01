import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/yesnot_cubit.dart';
import 'fields.dart';

class FildPassword extends StatelessWidget {
  final Function(String?)? onChange;
  final TextEditingController? controller;
  final String? Function(String?)? validation;
  final double? fontSize;
  final Color? containerColor;
  final String? labelText;

  const FildPassword({
    super.key,
    this.onChange,
    this.controller,
    this.validation,
    this.fontSize,
    this.containerColor = const Color(0xFFF6F6F6),
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => YesNotCubit(),
        child: BlocBuilder<YesNotCubit, bool>(builder: (context, state) {
          return UIFieldText(
            label: labelText,
            fontSize: 13,
            controller: controller,
            maxLength: 20,
            maxLines: 1,
            obscureText: !state,
            validation: validation,
            isNewDecoration: true,
            suffix: GestureDetector(
              onTap: () => state
                  ? context.read<YesNotCubit>().notSee()
                  : context.read<YesNotCubit>().yesSee(),
              child: Icon(state ? Icons.visibility : Icons.visibility_off,
                  size: 20),
            ),
          );
        }));
  }
}
