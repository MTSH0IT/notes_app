import 'package:flutter/material.dart';
class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key, required this.icon});
  final Icon icon;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.03),
        borderRadius: BorderRadius.circular(16),
      ),
      child: IconButton(
        onPressed: () {},
        icon: icon,
      ),
    );
  }
}