import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key, required this.controller}) : super(key: key);

  final TextEditingController controller;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
    var obsecureText = true;
  @override
  Widget build(BuildContext context) {
  
    return TextField(
        controller: widget.controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          hintText: 'Enter your password',
          suffixIcon: GestureDetector(
              onTap: () {

                setState(() {
                  obsecureText = !obsecureText;
                });
              },
              child: obsecureText? Icon(Icons.visibility_off_outlined) : Icon(Icons.visibility_outlined)),
          hintStyle:
              TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w400),
          fillColor: Colors.black.withOpacity(0.1),
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide(color: Colors.transparent, width: 0.0)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: BorderSide(color: Colors.transparent, width: 0.0)),
        ));
  }
}
