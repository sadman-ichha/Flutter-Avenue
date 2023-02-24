import 'package:flutter/material.dart';
import 'package:flutter_avenue/Google%20Admob/google_admob.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Avenue",
      debugShowCheckedModeBanner: false,
      home: GoogleAdmob(),
    );
  }
}
