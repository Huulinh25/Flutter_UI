import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final String nameButton;
  final VoidCallback? onPressed;

  const ConfirmButton({
    super.key,
    required this.nameButton,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style?.copyWith(
        backgroundColor: WidgetStateProperty.all(Colors.blue),
        textStyle: WidgetStateProperty.all(
          const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Thêm borderRadius
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(nameButton),
    );
  }
}
