import 'package:flutter/material.dart';
import 'package:to_do_project/util/my_buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({Key? key, required this.controller, required this.onSave, required this.onCancel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 128,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
          controller: controller,
          decoration: InputDecoration(border: OutlineInputBorder(),
            hintText: 'Add a new task',
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              MyButton(text: 'save', onPressed: onSave),
                const SizedBox(width: 8,),
                MyButton(text: 'cancel', onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
