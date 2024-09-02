import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.ontap});
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 46,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Center(
          child: BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              if (state is AddNoteLoading) {
                return const CircularProgressIndicator(color: Colors.black,);
              }
              return const Text("Add",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold));
            },
          ),
        ),
      ),
    );
  }
}
