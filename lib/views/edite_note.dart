import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/logic/model/note_model.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/edit_colors_list.dart';
import 'widgets/custom_dotted_text_field.dart';

class EditeNote extends StatefulWidget {
  const EditeNote({super.key, required this.note});
final NoteModel note;

  @override
  State<EditeNote> createState() => _EditeNoteState();
}

class _EditeNoteState extends State<EditeNote> {
String? title , subtitle;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50,),
            CustomAppBar(
              onPressed: (){
                widget.note.title = title ?? widget.note.title ;
                widget.note.subtitle = subtitle ?? widget.note.subtitle ;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchNote();
                Navigator.pop(context);

              },
              passedIcon: Icons.done,pageName: 'Edit Notes',),
            SizedBox(height: 45,),
            CustomTextField(
              onChanged: (value) {
                title = value;
              } ,
              hintText: widget.note.title,),
            SizedBox(height: 20,),
            CustomTextField(
              onChanged: (value){
                subtitle=value;
              },
              hintText: widget.note.subtitle,maxLines: 9,),
            SizedBox(height: 20,),
            EditColorsList(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}
