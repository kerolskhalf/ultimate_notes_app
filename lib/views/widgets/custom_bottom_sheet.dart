import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'custom_form_validator.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomAddSheet extends StatelessWidget {
  const CustomAddSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFail){
            print('---------------> failed ${state.errorMessage}');
          }
          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const CustomFormValidator());
        },
      ),
    );
  }
}
