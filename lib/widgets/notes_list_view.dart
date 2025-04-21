


import 'package:flutter/material.dart';

import 'custom_notes_item.dart';



class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0 , top: 10),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 20 ,
        itemBuilder: (context, index) {
        return const CustomNotesItem() ;
      },),
    );
  }
}
