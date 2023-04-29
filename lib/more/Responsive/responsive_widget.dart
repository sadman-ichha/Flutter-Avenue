import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  Widget mobileBody;
  Widget desktopBody;

  ResponsiveWidget({
    required this.mobileBody,
    required this.desktopBody,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return mobileBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
