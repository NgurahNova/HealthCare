import 'package:flutter/material.dart';

class MyTextFieldPass extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextFieldPass({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xCC205295)),
              borderRadius: BorderRadius.circular(18)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Color(0xCC205295)),
              borderRadius: BorderRadius.circular(18)
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(Icons.key),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[500], fontSize: 14)
        ),
      ),
    );
  }
}
