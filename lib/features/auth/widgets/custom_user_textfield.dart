import 'package:flutter/material.dart';

class CustomUserTextfield extends StatelessWidget {
  const CustomUserTextfield({super.key, required this.controller, required this.label});

  final TextEditingController controller;
  final String label;


  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        cursorColor: Colors.white,
        style: TextStyle(
            color: Colors.white
        ),
        decoration: InputDecoration(

          enabledBorder:OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.white)
          ),
          labelText: label,
          labelStyle: TextStyle(
              color: Colors.white
          ),
        )
    );
  }
}
