import 'package:flutter/material.dart';

class AnimatedOpacityCode extends StatefulWidget {
  const AnimatedOpacityCode({super.key});

  @override
  State<AnimatedOpacityCode> createState() => _AnimatedOpacityCodeState();
}

class _AnimatedOpacityCodeState extends State<AnimatedOpacityCode> {
  double _opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(
                milliseconds: 300,
              ),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Slider(
                value: _opacity,
                onChanged: (value) {
                  setState(() {
                    _opacity = value;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
