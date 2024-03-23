import 'package:flutter/material.dart';

import '../../themes/app_theme.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      actions: [Row(children: [Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(logoRcc),
      ), const SizedBox(width: 10), Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(logo50),
      )],)],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
