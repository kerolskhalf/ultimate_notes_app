import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import '../../cubits/add_note_cubit/add_note_cubit.dart';
import '../../logic/model/note_model.dart';
import 'color_picker_ui.dart';
import 'custom_button.dart';
import 'custom_dotted_text_field.dart';

class CustomFormValidator extends StatefulWidget {
  const CustomFormValidator({super.key});

  @override
  State<CustomFormValidator> createState() => _CustomFormValidatorState();
}

class _CustomFormValidatorState extends State<CustomFormValidator> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: CustomTextField(
                hintText: 'title',
                onSaved: (value) {
                  title = value;
                },
              ),
            ),
            CustomTextField(
              hintText: 'sub title',
              maxLines: 6,
              onSaved: (value) {
                subTitle = value;
              },
            ),
            const SizedBox(height: 40,),

            ColorPickerUI(),
            const SizedBox(height: 30),

            BlocBuilder<AddNoteCubit,AddNoteState>(
              builder: (context,state) => SaveButton(
                isLoading: state is AddNoteLoading ? true :false ,
                      onTap: () {
                        if (formKey.currentState!.validate()) {
                          formKey.currentState!.save();

                          NoteModel noteModel = NoteModel(
                            title: title!,
                            subtitle: subTitle!,
                            date: DateTime.now().toString().substring(0,10),
                            color: Colors.amberAccent.toARGB32(),
                          );
                          BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                        } else {
                          autoValidateMode = AutovalidateMode.always;
                        }
                      },

              ),
            ),
            
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
