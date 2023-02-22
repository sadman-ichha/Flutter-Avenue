import 'package:flutter/material.dart';

class TimeDatePicker extends StatelessWidget {
  TimeDatePicker({super.key});

  String? time, date;
  
  pickTime() async {}

  pickDate() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time & Date Picker"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Picked Time : $time ",
            style: const TextStyle(fontSize: 20.0),
          ),
          Text(
            "Picked Date : $date ",
            style: const TextStyle(fontSize: 20.0),
          ),
          const Divider(),
          // Elevated Button
          ElevatedButton(
            onPressed: () => pickTime(),
            child: const Text('Picked Time'),
          ),

          // Elevated Button
          ElevatedButton(
            onPressed: () {},
            child: const Text('Picked Date'),
          ),
        ],
      ),
    );
  }
}
