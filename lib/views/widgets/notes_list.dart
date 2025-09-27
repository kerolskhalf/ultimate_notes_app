import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/logic/model/note_model.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import '../../cubits/notes_cubit/notes_state.dart';
import 'custom_notes_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(
      builder: (context, state)  {
        List<NoteModel> note = BlocProvider.of<NotesCubit>(context).notes;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount:note.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomNotesItem(),
              );
            },
          ),
        );
      }
    );
  }
}
