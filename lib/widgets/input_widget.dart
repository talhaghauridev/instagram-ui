import 'package:flutter/material.dart';
import 'package:instagram_ui/constants/constants.dart';

class CustomInput extends StatefulWidget {
  final String? labelText;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final double borderRadius;
  final Color? fillColor;
  final bool filled;

  const CustomInput({
    Key? key,
    required this.hintText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.labelText,
    this.obscureText = false,
    this.leftIcon,
    this.rightIcon,
    this.validator,
    this.onChanged,
    this.borderColor,
    this.focusedBorderColor,
    this.borderRadius = 5,
    this.fillColor,
    this.filled = true,
  }) : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _isPasswordVisible = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Text(
            widget.labelText!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.grey[700],
            ),
          ),
        if (widget.labelText != null) const SizedBox(height: 8),
        SizedBox(
          width: double.infinity,
          height: 48,
          child: TextField(
            cursorColor: Colors.white,
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: _isPasswordVisible,
            onChanged: widget.onChanged,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontFamily: AppFonts.inter),
              prefixIcon:
                  widget.leftIcon != null ? Icon(widget.leftIcon) : null,
              suffixIcon: widget.obscureText
                  ? IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )
                  : (widget.rightIcon != null ? Icon(widget.rightIcon) : null),
              filled: true,
              fillColor: widget.fillColor ?? const Color(0xFF121212),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                    color: widget.focusedBorderColor ??
                        Theme.of(context).primaryColor),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide(
                    color: widget.borderColor ?? Colors.transparent,
                    style: BorderStyle.solid),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
