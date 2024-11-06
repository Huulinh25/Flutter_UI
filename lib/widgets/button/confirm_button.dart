import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final String nameButton;
  final VoidCallback? onPressed;
  final Color backgroundColor;
  final Color? textColor;

  const ConfirmButton({
    super.key,
    required this.nameButton,
    this.onPressed,
    this.backgroundColor = Colors.blue,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
            backgroundColor: WidgetStateProperty.all(backgroundColor),
            textStyle: WidgetStateProperty.all(
              const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(
                  color: textColor ?? Colors.transparent,
                  width: 2,
                ),
              ),
            ),
          ),
      onPressed: onPressed,
      child: Text(
        nameButton,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: textColor ?? Colors.white, // Use white if textColor is null
        ),
      ),
    );
  }
}
