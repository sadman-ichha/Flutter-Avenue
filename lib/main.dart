import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'widgets/Code Based Animation/animated_default_text_style.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Avenue",
      debugShowCheckedModeBanner: false,
      home: AnimatedDefaultTextStyleFlutter(),
    );
  }
}
