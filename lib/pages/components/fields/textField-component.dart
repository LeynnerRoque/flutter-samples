import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {

final TextEditingController controller;
final String labelText;
final Icon icon;
final bool obscureText;

TextFieldComponent({
  Key? key,
  required this.controller,
  required this.labelText,
  required this.icon,
  required this.obscureText
}): super (key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(60),
                borderSide: BorderSide(
                  color: Colors.blue,
                  width: 10.0,
                  ),
              ),
              labelText: labelText,
              prefixIcon: icon,
              focusColor: Colors.blue
            ),
            style: TextStyle(color: Colors.blue),
            cursorColor: Colors.blue,
    );
  }
}