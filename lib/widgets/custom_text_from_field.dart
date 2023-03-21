import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  CustomTextFromField(
      {super.key,
      this.hinText,
      required this.controller,
      required this.validator});
  String? hinText;
  TextEditingController controller;
  dynamic validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        hintText: hinText,
      ),
    );
  }
}
