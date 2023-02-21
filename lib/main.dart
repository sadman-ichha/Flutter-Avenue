import 'package:flutter/material.dart';
import 'package:flutter_avenue/widgets/buttons/buttons.dart';

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
      home: Buttons(),
    );
  }
}
