import 'package:hive_flutter/hive_flutter.dart';


import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/notes_view.dart';

import 'models/note_model.dart';

void main() async
{
  await Hive.initFlutter() ;
  await Hive.openBox(kNotesBox) ;
  Hive.registerAdapter(NoteModelAdapter()) ;
  runApp(const NotesApp()) ;
}
class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark ,
      ),
      builder: (context, child) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
            child: child ,
        );
      },
      home: const NotesView(),
    );
  }
}
