import 'dart:developer';

import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';

class AddModalButtonSheet extends StatelessWidget {
  const AddModalButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
      child: SingleChildScrollView(
        child: AddNoteFormState(),
      ),
    );
  }
}

class AddNoteFormState extends StatefulWidget {
  const AddNoteFormState({
    super.key,
  });

  @override
  State<AddNoteFormState> createState() => _AddNoteFormStateState();
}

class _AddNoteFormStateState extends State<AddNoteFormState> {
  GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  TextEditingController controllerTitle = TextEditingController();

  TextEditingController controllerSubTitle = TextEditingController();

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextFormField(
            onSaved: (data) {
              title = data;
            },
            controller: controllerTitle,
            hintText: 'Title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFormField(
            onSaved: (data) {
              subTitle = data;
            },
            controller: controllerSubTitle,
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 80,
          ),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                controllerTitle.clear();
                controllerSubTitle.clear();
                autovalidateMode = AutovalidateMode.disabled;
                setState(() {});
                log('title --> $title and subTitle --> $subTitle');
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}
