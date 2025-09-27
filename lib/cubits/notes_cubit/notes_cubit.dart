  import 'package:flutter_bloc/flutter_bloc.dart';
  import 'package:hive/hive.dart';
  import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
  import 'package:notes_app/logic/model/note_model.dart';
  import '../../constats.dart';

  class NotesCubit extends Cubit<NotesState>{
    NotesCubit() : super (StateInitial() ){
      fetchNote();
    }
    List <NoteModel> notes = [];

    fetchNote () async {

        var notesBox = Hive.box<NoteModel>(kNotesBox);
         notes =notesBox.values.toList();
         emit(NotesSuccess());
    }
  }