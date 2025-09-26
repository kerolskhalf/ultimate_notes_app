import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/logic/model/note_model.dart';
import '../../constats.dart';
import 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote (NoteModel note) async {
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