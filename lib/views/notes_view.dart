import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

import '../widgets/add_modal_button_sheet.dart';
import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        backgroundColor: kPrimaryColor,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
        ),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddModalButtonSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 28,
        ),
      ),
      body:  const NotesViewBody(),
    );
  }
}
