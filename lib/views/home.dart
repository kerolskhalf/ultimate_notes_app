import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_body_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: NotesViewBody(
        ),
      ),
    );
  }
}
