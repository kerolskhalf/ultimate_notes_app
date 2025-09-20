import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';

import 'widgets/custom_dotted_text_field.dart';

class EditeNote extends StatelessWidget {
  const EditeNote({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50,),
            CustomAppBar(passedIcon: Icons.done,pageName: 'Edit Notes',),
            SizedBox(height: 45,),
            CustomTextField(hintText: 'title',),
            SizedBox(height: 20,),
            CustomTextField(hintText: 'subtitle',maxLines: 8,),
          ],
        ),
      ),
    );
  }
}
