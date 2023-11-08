import 'package:flutter/material.dart';

import 'home.dart';

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
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}
