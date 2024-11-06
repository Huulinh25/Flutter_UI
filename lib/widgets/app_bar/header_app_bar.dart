import 'package:flutter/material.dart';

class HeaderAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HeaderAppBar({this.title,super.key});
  final String ?title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
        },
      ),
      title: Text(title ?? 'POS', style: Theme.of(context).appBarTheme.titleTextStyle),
      centerTitle: true,
      automaticallyImplyLeading: false,
    );
  }
}
