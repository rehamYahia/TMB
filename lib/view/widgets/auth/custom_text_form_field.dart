import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class customTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String lable;
  final IconData icon;

  customTextFormField(
    this.controller,
    this.hint,
    this.lable,
    this.icon,
  ); // const customTextFormField({super.key} , controller );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hint: Text(hint),
          hintStyle: Theme.of(
            context,
          ).textTheme.bodyMedium?.copyWith(color: AppColors.light_grey),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          label: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Text(lable),
          ),

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

          suffixIcon: Icon(icon, size: 17),
        ),
      ),
    );
  }
}
