import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obsecure;
  const MyTextfield(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.obsecure});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obsecure,
      decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(224, 224, 224, 1))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[400])),
    );
  }
}
