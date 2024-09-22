import 'package:flutter/material.dart';
import 'package:movies_app/modules/home/Screens/layout/layout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Movies App',
      home: LayOutScreen(),
    );
  }
}