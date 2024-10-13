import 'package:flutter/material.dart';
import '../styles/icon_button.dart';

class AppIconButtonWidget extends StatelessWidget {
  final Widget icon;
  final double? borderRadius;
  final double? buttonSize;
  final Color? fillColor;
  final Color? disabledColor;
  final Color? disabledIconColor;
  final Color? hoverColor;
  final Color? hoverIconColor;
  final Color? borderColor;
  final double? borderWidth;
  final bool showLoadingIndicator;
  final Function()? onPressed;
  final bool loading;

  const AppIconButtonWidget(
      {super.key,
      required this.icon,
      this.borderRadius,
      this.buttonSize,
      this.fillColor,
      this.disabledColor,
      this.disabledIconColor,
      this.hoverColor,
      this.hoverIconColor,
      this.borderColor,
      this.borderWidth,
      required this.showLoadingIndicator,
      this.onPressed,
      required this.loading});

  @override
  Widget build(BuildContext context) {
    Icon ico = icon as Icon;
    Icon effectiveIcon = Icon(
      ico.icon,
      size: ico.size,
    );
    return SizedBox(
      width: buttonSize,
      height: buttonSize,
      child: Theme(
        data: ThemeData.from(
          colorScheme: Theme.of(context).colorScheme,
          useMaterial3: true,
        ),
        child: IgnorePointer(
          ignoring: (showLoadingIndicator && loading),
          child: IconButton(
              icon: (showLoadingIndicator && loading)
                  ? SizedBox(
                      width: ico.size,
                      height: ico.size,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          ico.color ?? Colors.white,
                        ),
                      ),
                    )
                  : effectiveIcon,
              onPressed: onPressed == null
                  ? null
                  : () async {
                      if (loading) {
                        return;
                      }
                      await onPressed!();
                    },
              splashRadius: buttonSize,
              style: _buildStyle()),
        ),
      ),
    );
  }

  ButtonStyle _buildStyle() {
    Icon ico = icon as Icon;
    return AppIconButtonStyle(
            borderColor: borderColor,
            borderWidth: borderWidth,
            disabledColor: disabledColor,
            disabledIconColor: disabledIconColor,
            hoverIconColor: hoverIconColor,
            hoverColor: hoverColor,
            fillColor: fillColor,
            borderRadius: borderRadius,
            iconColor: ico.color)
        .style();
  }
}
