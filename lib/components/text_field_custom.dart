import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  TextFieldCustom({required this.textFieldLabel});

  String textFieldLabel;
  TextEditingController textController = TextEditingController();

  bool checkFieldType() {
    if (textFieldLabel == 'Password') {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    void getTextValue() {
      textController.text;
    }

    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextField(
        controller: textController,
        style: TextStyle(
          color: Colors.black,
        ),
        obscureText: checkFieldType(),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          labelText: textFieldLabel,
        ),
      ),
    );
  }
}
