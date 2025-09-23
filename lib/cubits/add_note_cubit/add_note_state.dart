class AddNoteState{}
class AddNoteInitial extends AddNoteState{}
class AddNoteLoading extends AddNoteState{}
class AddNoteSuccess extends AddNoteState{}
class AddNoteFail extends AddNoteState{
  final String errorMessage;
  AddNoteFail(this.errorMessage);

}
