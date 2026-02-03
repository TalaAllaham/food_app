import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/constants/app_colors.dart';

class CustomTextfield extends StatefulWidget {
  const CustomTextfield({super.key, required this.isPass, required this.text, required this.controller});

  final bool isPass;
  final String text;
  final TextEditingController controller;

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  late bool _obscureText = widget.isPass;

  void _togglePassword (){
    setState(() {
      _obscureText = ! _obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: _obscureText,
      validator: (v) {
        if(v == null || v.isEmpty) {
          return "please fill ${widget.text}";
        }
        null;
      },
      cursorColor: AppColors.green,
      cursorHeight: 20,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        suffixIcon: widget.isPass
            ? IconButton(
          icon: Icon(
            _obscureText
                ? CupertinoIcons.eye_slash
                : CupertinoIcons.eye,
          ),
          onPressed: _togglePassword,
        )
            : null,
        hintText: widget.text,
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
