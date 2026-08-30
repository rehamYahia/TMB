import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final TextAlign? textAlign;
  final String text;
  final Color textColor;
  final double fontSize;
  final VoidCallback onTap;

  const CustomTextButton({
    super.key,
    this.textAlign,
    required this.text,
    required this.textColor,
    required this.fontSize,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Text(
        textAlign: textAlign,
        text,
        style: TextStyle(color: textColor, fontSize: fontSize),
      ),
    );
  }
}
