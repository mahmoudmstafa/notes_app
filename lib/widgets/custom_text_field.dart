

import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';



class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});

  final String hintText ;
  final int maxLines ;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines ,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText ,
        hintStyle: const TextStyle(
          color: Colors.grey ,
        ),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(
          colorBorder: kPrimaryColor,
          widthBorder: 1.7 ,
        ) ,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({ Color colorBorder = Colors.white , double widthBorder = 1 }) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10) ,
        borderSide: BorderSide(
          color: colorBorder ,
          width: widthBorder ,
        ),
      );
  }
}
