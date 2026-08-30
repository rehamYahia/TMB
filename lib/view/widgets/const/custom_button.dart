import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final double reduies;
  final Function()? onTap;

  CustomButton(
    this.text,
    this.width,
    this.height,
    this.backgroundColor,
    this.textColor,
    this.reduies,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(reduies),
        ),
        child: Text(text, style: TextStyle(color: textColor)),
      ),
    );
  }
}
