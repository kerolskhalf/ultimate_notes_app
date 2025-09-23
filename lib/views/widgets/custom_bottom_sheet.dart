import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_dotted_text_field.dart';

class CustomAddSheet extends StatelessWidget {
  const CustomAddSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: CustomFormValidator(),
    );
  }
}

class CustomFormValidator extends StatefulWidget {
  const CustomFormValidator({super.key});

  @override
  State<CustomFormValidator> createState() => _CustomFormValidatorState();
}

class _CustomFormValidatorState extends State<CustomFormValidator> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
           Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: CustomTextField(
                hintText: 'title',
              onSaved: (val){
                  title = val;
              },
            ),
          ),
           CustomTextField(
               hintText: 'sub title',
               maxLines: 6,
             onSaved: (value){
                 subTitle=value;
             },
           ),
          const Spacer(),
          SaveButton(
            onTap: () {
              if(formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }else{
                autoValidateMode = AutovalidateMode.always;
              }
            },
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

