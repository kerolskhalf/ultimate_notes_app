import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/logic/model/note_model.dart';

import '../edite_note.dart';

class CustomNotesItem extends StatelessWidget {
  const CustomNotesItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => EditeNote(note: note,)),
        );
      },
      child: Container(
        padding: EdgeInsets.only(top: 30, bottom: 30, left: 10),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              subtitle: Text(
                note.subtitle,
                style: TextStyle(color: Colors.black54, fontSize: 20),
              ),
              trailing: Transform.translate(
                offset: Offset(0, -50),
                child: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchNote();
                  },
                  icon: const Icon(Icons.delete, color: Colors.black, size: 35),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(note.date, style: TextStyle(color: Colors.black)),
            ),
          ],
        ),
      ),
    );
  }
}
