import 'package:flutter/material.dart';

class BaseInput extends StatelessWidget {
  const BaseInput({super.key, this.hintText, this.obscureText = false});
  final String? hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
      decoration: InputDecoration(
        contentPadding:
          const EdgeInsets.symmetric(horizontal: 20),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.teal[700],
          fontSize: 18,
          fontWeight: FontWeight.bold,          
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.teal[700]!, // Màu viền mặc định
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          borderSide: BorderSide(
            color: Colors.teal[700]!, // Màu viền mặc định
            width: 2,
          ),
        ),
      ),
    );
  }
}
