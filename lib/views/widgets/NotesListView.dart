import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/CustomNoteItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8),
          child: CustomNoteItem(),
        );
      },
    );
  }
}
