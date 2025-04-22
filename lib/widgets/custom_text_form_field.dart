import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.controller,
  });

  final String hintText;
  final int maxLines;
  final void Function(String? data)? onSaved;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data?.isEmpty ?? true) {
          //data == null || data.isEmpty
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      controller: controller,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        errorStyle: const TextStyle(
          color: Color(0xFFEF9A9A),
        ),
        enabledBorder: buildOutlineInputBorder(),
        focusedErrorBorder: buildOutlineInputBorder(
          colorBorder: const Color(0xFFEF9A9A),
          widthBorder: 1.5,
        ),
        errorBorder: buildOutlineInputBorder(
          colorBorder: const Color(0xFFEF9A9A),
          widthBorder: 1.5,
        ),
        focusedBorder: buildOutlineInputBorder(
          colorBorder: kPrimaryColor,
          widthBorder: 1.5,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(
      {Color colorBorder = Colors.white, double widthBorder = 1}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: colorBorder,
        width: widthBorder,
      ),
    );
  }
}
