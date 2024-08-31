import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/CostomTextField.dart';
import 'package:notes_app/views/widgets/custom_button.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: AddNoteForm(),
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
                  Navigator.pop(context);
                  log("title=$title / subTitle=$subTitle");
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
