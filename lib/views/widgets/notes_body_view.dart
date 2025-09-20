import 'package:flutter/material.dart';
import 'custom_appbar.dart';
import 'notes_list.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50,),
        CustomAppBar(passedIcon: Icons.search,pageName: 'My Notes',),
        SizedBox(height: 20,),
        Expanded(child: NotesList()),

      ],
    );
  }
}
