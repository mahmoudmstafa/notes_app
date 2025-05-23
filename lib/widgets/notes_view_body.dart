
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            appBarIcon: Icons.search ,
          ),
          SizedBox(
            height: 10,
          ) ,
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
