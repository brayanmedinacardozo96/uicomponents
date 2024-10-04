import 'package:flutter/material.dart';

//Card opcion horizontal
class AppItemCardWidget extends StatelessWidget {
  final EdgeInsetsDirectional? padding;
  final Color? containerColor;
  final IconData? leadingIco;
  final Color? leadColor;
  final IconData? trailingIco;
  final Color? traiColor;
  final String text;
  final TextStyle? textStyle;

  const AppItemCardWidget(this.text,
      {super.key,
      this.padding,
      this.containerColor,
      this.leadingIco,
      this.trailingIco,
      this.leadColor,
      this.traiColor,
      this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
          color: containerColor,
          boxShadow: const [
            BoxShadow(
              blurRadius: 3.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                1.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                leadingIco ?? Icons.account_circle_outlined,
                color: leadColor,
                size: 24.0,
              ),
              Padding(
                padding:
                    const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Text(
                  text,
                  style: textStyle ??
                      const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(0.9, 0.0),
                  child: Icon(
                    trailingIco,
                    color: traiColor,
                    size: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
