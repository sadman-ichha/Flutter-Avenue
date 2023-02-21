import 'package:flutter/material.dart';


class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
             // Fluttertoast.showToast(msg: "Clicked");
            },
            child: Text('Elevated Button'),
          ),
          TextButton(
            child: Text('Text Button'),
            onPressed: () {
              print("Clicked");
            },
          ),
        ],
      ),
    );
  }
}
