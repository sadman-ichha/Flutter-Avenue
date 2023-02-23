import 'package:flutter/material.dart';

class SimmerEffect extends StatelessWidget {
  const SimmerEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shimmer Effect"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        height: 150.0,
        color: Colors.grey.withOpacity(0.3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FlutterLogo(size: 60.0),
            const SizedBox(width: 4.0),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "This is Lorem ipsum!",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley e ",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
