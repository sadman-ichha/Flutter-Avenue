import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'packages/Provider/eligibility_provider_screen.dart';
import 'packages/Provider/eligibility_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(
    //Multi provider
    MultiProvider(
      providers: [
        ListenableProvider(
          create: (context) => EligibilityProviderScreen(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Avenue",
      debugShowCheckedModeBanner: false,
      home: EligibilityScreen(),
    );
  }
}
