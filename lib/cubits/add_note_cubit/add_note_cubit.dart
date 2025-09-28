import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/logic/model/note_model.dart';
import '../../constats.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  Color colorC = Color(0xFFFFD700);
  addNote (NoteModel note) async {
    note.color = colorC.toARGB32();
    emit(AddNoteLoading());
    try{
   var notesBox = Hive.box<NoteModel>(kNotesBox);
   await  notesBox.add(note);
   emit(AddNoteSuccess());
    }catch(e){
       emit(AddNoteFail(e.toString()));
    }

  }
}