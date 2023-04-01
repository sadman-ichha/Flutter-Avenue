import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'packages/Provider/eligibility_provider_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  Stripe.publishableKey =
      "pk_test_51MoSvCBxRMKAhtZ7If0CfWKboZDd2LiaH60T376NqRjqmHlqFKWAqYYWTLy5HgYQvDJsR8VYUT9wo7N5VXrRiOtt00ziZRAR2W";
  await Stripe.instance.applySettings();
  runApp(
    //Multi Provider Use
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
    return const MaterialApp(
      title: "Flutter Avenue",
      debugShowCheckedModeBanner: false,
      home: Placeholder(),
    );
  }
}
