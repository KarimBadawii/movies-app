import 'package:flutter/material.dart';
import 'package:movies_app/modules/home/Screens/layout/layout_screen.dart';
import 'package:movies_app/modules/home/Screens/nav_screens/categories/presentation/pages/category_details_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Movies App',
      initialRoute: LayOutScreen.routeName,
      routes: {LayOutScreen.routeName : (_)=> const LayOutScreen(),
      CategoryDetailsScreen.routeName : (_)=> const CategoryDetailsScreen()
      },
    );
  }
}
