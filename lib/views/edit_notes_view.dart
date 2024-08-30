import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/CostomTextField.dart';
import 'package:notes_app/views/widgets/CustomAppBar.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomAppBar(title: "Edit Notes",icon: Icon(Icons.check),),
          SizedBox(height: 24),
          CustomTextField(hint: "Title"),
          SizedBox(height: 12),
          CustomTextField(hint: "Sub Title", maxLines: 5),
        ],
      ),
    ),
    );
  }
}
