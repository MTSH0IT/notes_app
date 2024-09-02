import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_state.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/CostomTextField.dart';
import 'package:notes_app/views/widgets/custom_button.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailer) {
            log(state.error);
          }

          if (state is AddNoteSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(
                child: AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  String? title;
  String? subTitle;
  AutovalidateMode mode = AutovalidateMode.disabled;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: mode,
      child: Column(
        children: [
          const SizedBox(height: 30),
          CustomTextField(
            hint: "Title",
            onsave: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 24),
          CustomTextField(
            hint: "Sub Title",
            maxLines: 4,
            onsave: (value) {
              subTitle = value;
            },
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32, bottom: 16),
            child: CustomButton(
              ontap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  NoteModel note = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value,
                  );
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                } else {
                  setState(() {
                    mode = AutovalidateMode.always;
                  });
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
