import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class CustomNoteItem extends StatelessWidget {
  const CustomNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.orange[200],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 16,bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "DATA",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "data  data  data  data  data  data ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black.withOpacity(0.5),
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.trash,color: Colors.black,size: 24,),
              ),
            ),
             Padding(
              padding:const EdgeInsets.only(right: 24),
              child: Text("data  data  data",style: TextStyle(
                fontSize: 16,color: Colors.black.withOpacity(0.5)
              ),),
            )
          ],
        ),
      ),
    );
  }
}
