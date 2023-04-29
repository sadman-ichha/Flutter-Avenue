import 'package:flutter/material.dart';
import 'package:flutter_avenue/more/Responsive/desktop_body.dart';
import 'package:flutter_avenue/more/Responsive/mobile_body.dart';
import 'responsive_widget.dart';

class ResponsiveScreen extends StatelessWidget {
  const ResponsiveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveWidget(
        mobileBody: const MobileBody(),
        desktopBody: const DesktopBody(),
      ),
    );
  }
}
