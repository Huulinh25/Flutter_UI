import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor,
    this.foregroundColor,
    this.fontSize = 16,
    this.width = double.infinity,
    this.height = 50,
    this.borderColor,
    this.borderRadius = 10.0,
  });

  final VoidCallback onPressed;
  final String text;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? fontSize;
  final double width;
  final double height;
  final Color? borderColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: foregroundColor ?? Colors.white, backgroundColor: backgroundColor ?? Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: BorderSide(color: borderColor ?? Colors.grey),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
