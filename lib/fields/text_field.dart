import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UIFieldText extends StatelessWidget {
  final List<String>? autofillHints;
  final String? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? suffixIconClear;
  final TextEditingController? controller;
  final int? maxLength;
  final TextInputType? keyboardType;
  final String? Function(String?)? validation;
  final VoidCallback? onTap;
  final bool? readOnly;
  final bool? enabled;
  final int? maxLines;
  final double? fontSize;
  final String? counterText;
  final Function(String?)? onChange;
  final String? initialValue;
  final Color? containerColor;
  final TextAlign? textAlign;
  final EdgeInsets? margin;
  final InputDecoration? decoration;
  final bool? isNewDecoration;
  final bool? obscureText;
  final bool? withBorder;
  final List<TextInputFormatter>? inputFormatters;
  final Color? borderSideColor;
  final Widget? suffix;
  final String? hintText;

  const UIFieldText(
      {super.key,
      this.label,
      this.suffixIcon,
      this.controller,
      this.maxLength = 10,
      this.keyboardType,
      this.validation,
      this.onTap,
      this.readOnly,
      this.maxLines,
      this.fontSize = 13,
      this.suffixIconClear,
      this.counterText = "",
      this.onChange,
      this.initialValue,
      this.containerColor = const Color(0xFFF6F6F6),
      this.prefixIcon,
      this.textAlign = TextAlign.start,
      this.enabled,
      this.margin = const EdgeInsets.only(top: 10, left: 10, right: 10),
      this.decoration,
      this.isNewDecoration = false,
      this.obscureText = false,
      this.withBorder = true,
      this.inputFormatters,
      this.autofillHints,
      this.borderSideColor = Colors.blueAccent,
      this.suffix,
      this.hintText});

  @override
  Widget build(BuildContext context) {
    return // Generated code for this emailAddress Widget...
        Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 16),
      child: SizedBox(
        width: double.infinity,
        child: TextFormField(
          maxLines: maxLines,
          controller: controller,
          maxLength: maxLength,
          onTap: onTap,
          readOnly: readOnly ?? false,
          enabled: enabled,
          /*focusNode: _model.emailAddressFocusNode,*/
          autofocus: true,
          autofillHints: autofillHints,
          keyboardType: keyboardType,
          obscureText: obscureText!,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: validation != null ? "$label *" : label,
            suffixIcon: controller?.text != ""
                ? suffixIconClear ?? suffixIcon
                : suffixIcon,
            suffix: suffix,
            prefixIcon: prefixIcon,
            counterText: counterText,
            labelStyle: const TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              color: Color(0xFF57636C),
              fontSize: 16,
              letterSpacing: 0,
              fontWeight: FontWeight.w500,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFF1F4F8),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: borderSideColor ?? Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFE0E3E7),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xFFE0E3E7),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            filled: true,
            fillColor: containerColor ?? const Color(0xFFF1F4F8),
          ),
          style: const TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            color: Color(0xFF101213),
            fontSize: 16,
            letterSpacing: 0,
            fontWeight: FontWeight.w500,
          ),
          validator: validation,
          onChanged: onChange,
          /* validator:
              _model.emailAddressTextControllerValidator.asValidator(context),*/
        ),
      ),
    );
  }

  Widget build2(BuildContext context) {
    return

        /*counterText!.isEmpty
        ?*/
        Container(
            // height: 80,
            margin: margin,
            child: TextFormField(
              inputFormatters: inputFormatters,
              textAlign: textAlign ?? TextAlign.start,
              textAlignVertical: TextAlignVertical.center,
              initialValue: initialValue,
              onChanged: onChange,
              style:
                  TextStyle(fontSize: fontSize), //, color: CustomColor.primary
              readOnly: readOnly ?? false,
              enabled: enabled,
              controller: controller,
              maxLength: maxLength,
              maxLines: maxLines,
              keyboardType: keyboardType,
              decoration: isNewDecoration! ? decoration : getDecoration(),
              validator: validation,
              onTap: onTap,
              obscureText: obscureText!,
            ));
  }

  InputDecoration getDecoration() {
    const Color greyShade1 = Color(0xFFE7E7E7);
    return InputDecoration(
      hintStyle: const TextStyle(color: Color.fromARGB(255, 188, 220, 246)),
      filled: true,
      fillColor: containerColor,
      border: InputBorder.none,
      labelText: validation != null ? "$label *" : label,
      suffixIcon:
          controller?.text != "" ? suffixIconClear ?? suffixIcon : suffixIcon,
      prefixIcon: prefixIcon,
      counterText: counterText,
      disabledBorder: withBorder!
          ? const OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: greyShade1), //<-- SEE HERE
            )
          : null,
      enabledBorder: withBorder!
          ? const OutlineInputBorder(
              borderSide:
                  BorderSide(width: 1, color: greyShade1), //<-- SEE HERE
            )
          : null,
    );
  }
}
