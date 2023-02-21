import 'package:flutter/material.dart';

import 'widgets/appbar_preferredSize.dart';

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
      home: AppBar_PreferredSize(),
    );
  }
}
