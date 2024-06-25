import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor:Color.fromARGB(255, 1, 2, 98),
        centerTitle: true,
        title: const Text(
          "RENT A CAR",
          style:TextStyle(color: Color.fromARGB(255, 245, 197, 07),fontWeight: FontWeight.bold) 
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(65);
}
