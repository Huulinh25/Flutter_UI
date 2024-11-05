import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          // Xử lý sự kiện khi nhấn vào icon
        },
      ),
      title: Text("POS", style: Theme.of(context).appBarTheme.titleTextStyle),
      centerTitle: true,
      automaticallyImplyLeading: false,
    );
  }
}
