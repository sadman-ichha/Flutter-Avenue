import 'package:flutter/material.dart';
import 'widgets/BottomNavBar & Tabbar/bottom_nav_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Avenue",
      debugShowCheckedModeBanner: false,
      home: BottomNavControllar(),
    );
  }
}
