import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String nameButton;
  final VoidCallback? onPressed;

  const PrimaryButton({
    super.key,
    required this.nameButton,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style,
      onPressed: onPressed,
      child: Text(
        nameButton,
      ),
    );
  }
}
