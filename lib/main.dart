import 'package:flutter/material.dart';
import 'package:pr3/pages/drinks_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ПР3 ПКС',
      home: DrinksPage(),
    );
  }
}
