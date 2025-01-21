import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final Color? disabledColor;
  final Color? borderColor;
  final double borderRadius;
  final double elevation;
  final double paddingHorizontal;
  final double paddingVertical;
  final bool isLoading;
  final TextStyle? textStyle;
  final Widget? leadingIcon;
  final Widget? trailingIcon;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.backgroundColor,
    this.disabledColor,
    this.borderColor,
    this.borderRadius = 8.0,
    this.elevation = 2.0,
    this.paddingHorizontal = 16.0,
    this.paddingVertical = 12.0,
    this.isLoading = false,
    this.textStyle,
    this.leadingIcon,
    this.trailingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDisabled = onPressed == null || isLoading;

    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: isDisabled
            ? (disabledColor ?? Colors.grey[400])
            : (backgroundColor ?? Theme.of(context).primaryColor),
        foregroundColor: textColor ?? Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal,
          vertical: paddingVertical,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(
            color: borderColor ?? Colors.transparent,
            width: borderColor != null ? 1.0 : 0.0,
          ),
        ),
      ),
      child: isLoading
          ? SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                color: textColor ?? Colors.white,
                strokeWidth: 2.0,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leadingIcon != null) ...[
                  leadingIcon!,
                  const SizedBox(width: 8.0),
                ],
                Text(
                  text,
                  style: textStyle ??
                      TextStyle(
                        color: textColor ?? Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                if (trailingIcon != null) ...[
                  const SizedBox(width: 8.0),
                  trailingIcon!,
                ],
              ],
            ),
    );
  }
}
