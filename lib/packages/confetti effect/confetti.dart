import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class ConfettiEffect extends StatefulWidget {
  @override
  State<ConfettiEffect> createState() => _ConfettiEffectState();
}

class _ConfettiEffectState extends State<ConfettiEffect> {
  //const ConfettiEffect({super.key});
  final ConfettiController _confettiController = ConfettiController();

  bool isPlaying = false;
  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Scaffold(
          appBar: AppBar(),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                if (isPlaying) {
                  _confettiController.stop();
                } else {
                  _confettiController.play();
                }
                isPlaying = !isPlaying;
              },
              child: const Text("Party Time"),
            ),
          ),
        ),
        ConfettiWidget(confettiController: _confettiController)
      ],
    );
  }
}
