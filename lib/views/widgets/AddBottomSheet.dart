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
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTextField(hint: "title"),
            SizedBox(height: 24),
            CustomTextField(
              hint: "data",
              maxLines: 4,
            ),
            //SizedBox(height: 24),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 16),
              child: CustomButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.teal.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextButton(
        onPressed: () {},
        child: const Text("Add",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
}
