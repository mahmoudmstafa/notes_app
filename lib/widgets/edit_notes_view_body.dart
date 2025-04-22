


import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_form_field.dart';


class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            appBarIcon: Icons.check,
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFormField(
            hintText: 'Title',
          ),
          SizedBox(
            height: 15,
          ),
          CustomTextFormField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    ) ;
  }
}
