import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uicomponents/uicomponents.dart';

class UIPhone extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final PhoneCubit phoneCubit;
  final Function()? onPressed;

  const UIPhone(
      {super.key,
      required this.controller,
      required this.label,
      required this.phoneCubit,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => phoneCubit,
        child: BlocBuilder<PhoneCubit, Country>(builder: (context, state) {
          return UIFieldText(
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            validation: UtlValidation(context).requiered,
            suffixIcon: TextButton.icon(
              onPressed: onPressed,
              icon: const Icon(Icons.arrow_drop_down),
              label: SizedBox(
                  width: state.dialCode.length == 4 ? 80 : 70,
                  child: Row(
                    children: [
                      Text("+ ${state.dialCode} "),
                      Image.asset(
                        'assets/flags/${state.code.toLowerCase()}.png',
                        width: 20,
                      )
                    ],
                  )),
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                iconColor: Colors.black,
              ),
            ),
            controller: controller,
            label: label,
          );
        }));
  }
}
