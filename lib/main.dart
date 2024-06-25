import 'package:final_project/home/index.dart';
import 'package:final_project/home/index_2.dart';
import 'package:final_project/home/index_3.dart';
import 'package:final_project/home/index_4.dart';
import 'package:final_project/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppStyle.lightTheme(context),
      darkTheme: AppStyle.darkTheme(context),
      home: const HomePage(),
    );
  }
}
