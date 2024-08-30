import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.hint,  this.maxLines=1,
  });
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:const TextStyle(color: Colors.white),
         enabledBorder: buildBorder(),
         focusedBorder: buildBorder(Colors.teal),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return  OutlineInputBorder(
      borderSide: BorderSide(color:color?? Colors.white),
    );
  }
}
