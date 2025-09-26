import 'package:flutter/material.dart';
import '../views/widgets/custom_bottom_sheet.dart';
import '../views/widgets/notes_body_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff053900),
        child: Icon(Icons.add,),
        onPressed: () {
          debugPrint('madness and badness combination');
          showModalBottomSheet(
            isScrollControlled: true,
            //shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(22)),
            context: context,
            builder: (context) {
              return CustomAddSheet();
            },
          );
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: NotesViewBody(),
      ),
    );
  }
}
