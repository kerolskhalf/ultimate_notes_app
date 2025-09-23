
import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/logic/model/note_model.dart';
import '../../constats.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote (NoteModel note){
   var notesBox =  Hive.box(kNotesBox);
   emit(AddNoteSuccess());
   notesBox.add(note);
  }
}