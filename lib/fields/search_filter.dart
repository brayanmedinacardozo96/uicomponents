import 'package:flutter/material.dart';

class AppFieldSearchFilter extends StatelessWidget {
  final Function()? onPressed;
  final Function(String)? onChanged;
  final TextEditingController controller;
  final bool? readOnly;
  final String? label;
  final Color? containerColor;
  final Color? containerBorderColor;
  final Color? iconColor;

  const AppFieldSearchFilter({
    super.key,
    this.onPressed,
    this.onChanged,
    required this.controller,
    this.readOnly,
    this.label,
    this.containerColor,
    this.iconColor,
    this.containerBorderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 75,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16, 8, 16, 12),
        child: GestureDetector(
            onTap: onPressed, // onSearch(context),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                color: containerColor,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color(0x33000000),
                    offset: Offset(
                      0,
                      1,
                    ),
                  )
                ],
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: containerBorderColor ?? const Color(0xFFDBE2E7),
                ),
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 8, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.search_rounded,
                      color: iconColor,
                      size: 24,
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: SizedBox(width: 200, child: Text(label ?? "")),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
