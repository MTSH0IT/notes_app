import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/AddBottomSheet.dart';
import 'package:notes_app/views/widgets/CustomAppBar.dart';
import 'package:notes_app/views/widgets/NotesListView.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(),
            Expanded(
                child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: NotesListView(),
            )),
          ],
        ),
      ),
    );
  }
}



