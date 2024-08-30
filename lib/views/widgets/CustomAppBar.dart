import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/views/widgets/SearchIcon.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
          ),
        ),
       const Spacer(flex: 1),
        CustomIcon(icon: icon),
      ],
    );
  }
}