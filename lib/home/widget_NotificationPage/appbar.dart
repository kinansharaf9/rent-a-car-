import 'package:flutter/material.dart';

class NotificationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const NotificationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        centerTitle: true,
        title: Text(
          "Notifications",
          style: Theme.of(context).textTheme.bodyLarge,
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(65);
}
