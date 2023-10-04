import 'package:flutter/material.dart';
import 'package:food_court/screens/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Court',
      theme: ThemeData(),
      home: const MainScreen()
    );
  }
}
