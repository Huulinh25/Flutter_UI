import 'package:flutter/material.dart';

class WelcomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WelcomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(350);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: const Image(
        height: 500,
        image: AssetImage('assets/images/welcome.jpeg'),
        fit: BoxFit.cover,
      ),
      backgroundColor: Colors.transparent,
    );
  }
}
