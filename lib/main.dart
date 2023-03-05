import 'package:flutter/material.dart';
import 'package:flutter_avenue/Google%20Admob/google_admob.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

import 'widgets/Draggable & Draggable/draggableDragTarget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Avenue",
      debugShowCheckedModeBanner: false,
      home: DraggableScreen(),
    );
  }
}
