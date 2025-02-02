import 'package:flutter/material.dart';
import 'package:practice/screen/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  DialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});
  

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      content:Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // get user input
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                MyButton(text: "Save", onPressed: onSave),
                
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )

            //save and cancel button
          ],
        )
      ),
    );
  }
}