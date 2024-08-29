import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/CostomTextField.dart';

class AddBottomSheet extends StatelessWidget {
  const AddBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(hint: "tital"),
          SizedBox(height: 24),
          CustomTextField(hint: "data",maxLines: 4,)
        ],
      ),
    );
  }
}
