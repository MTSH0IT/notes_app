import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/SearchIcon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "NOTES",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        Spacer(flex: 1),
        SearchIcon(),
      ],
    );
  }
}