import 'package:flutter/material.dart';
import 'package:the_flutter_way/splash.dart';

void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatefulWidget {
  const GroceryApp({super.key});

  @override
  State<GroceryApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GroceryApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grocery App',
      home: SplashScreen(),
    );
  }
}
