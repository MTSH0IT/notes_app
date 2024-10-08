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
            isScrollControlled: true,

            
            context: context,
            builder: (context) {
              return const AddBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 8),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomAppBar(title: "Notes",icon: Icon(Icons.search),),
            SizedBox(height: 5),
            Expanded(
              child: NotesListView(),
            ),
          ],
        ),
      ),
    );
  }
}
