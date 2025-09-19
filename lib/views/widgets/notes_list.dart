import 'package:flutter/material.dart';

import 'custom_notes_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CustomNotesItem(),
        );
      },
        itemCount: 10,
      ),
    );
  }
}
