import 'package:flutter/material.dart';

class AppIconButtonStyle {
  final double? borderRadius;
  final Color? borderColor;
  final double? borderWidth;
  final Color? disabledColor;
  final Color? disabledIconColor;
  final Color? hoverIconColor;
  final Color? iconColor;
  final Color? hoverColor;
  final Color? fillColor;

  AppIconButtonStyle(
      {this.iconColor,
      this.borderColor,
      this.borderWidth,
      this.disabledColor,
      this.disabledIconColor,
      this.hoverIconColor,
      this.hoverColor,
      this.fillColor,
      this.borderRadius});

  style() {
    return ButtonStyle(
      shape: WidgetStateProperty.resolveWith<OutlinedBorder>(
        (states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 0),
            side: BorderSide(
              color: borderColor ?? Colors.transparent,
              width: borderWidth ?? 0,
            ),
          );
        },
      ),
      iconColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.disabled) &&
              disabledIconColor != null) {
            return disabledIconColor;
          }
          if (states.contains(WidgetState.hovered) && hoverIconColor != null) {
            return hoverIconColor;
          }
          return iconColor;
        },
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
        (states) {
          if (states.contains(WidgetState.disabled) && disabledColor != null) {
            return disabledColor;
          }
          if (states.contains(WidgetState.hovered) && hoverColor != null) {
            return hoverColor;
          }

          return fillColor;
        },
      ),
      overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.pressed)) {
          return null;
        }
        return hoverColor == null ? null : Colors.transparent;
      }),
    );
  }
}
