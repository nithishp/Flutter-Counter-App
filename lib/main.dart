// ignore_for_file: prefer_const_constructors

import 'package:fitness/pages/first_page.dart';
import 'package:fitness/pages/home.dart';
import 'package:fitness/pages/second_page.dart';
import 'package:fitness/pages/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/first': (context) => const FirstPage(),
        '/home': (context) => const HomePage(),
        '/settings': (context) => SettingsPage(),
        '/second': (context) => SecondPage()
      },
    );
  }
}
