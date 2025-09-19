import 'package:flutter/material.dart';
import '../views/widgets/custom_bottom_sheet.dart';
import '../views/widgets/notes_body_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton( child: Icon(Icons.add),onPressed: (){
         print('madness and badness combination');
         showModalBottomSheet(context: context, builder: (context) {
           return CustomBottomSheet();
         },);

      }),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: NotesViewBody(
        ),
      ),
    );
  }
}
