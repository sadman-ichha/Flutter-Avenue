import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Buttons extends StatefulWidget {
  String? _value;

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Elevated Button
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(msg: "Clicked Elevated Button");
              },
              child: const Text('Elevated Button'),
            ),
            // Text Button
            TextButton(
              child: const Text('Text Button'),
              onPressed: () {
                Fluttertoast.showToast(msg: "Clicked TextButton");
              },
            ),
            // Outlined Button
            OutlinedButton(
              child: const Text('Outlined Button'),
              onPressed: () {
                Fluttertoast.showToast(msg: "Clicked Outlined Button");
              },
            ),
            // Floating Action Button
            FloatingActionButton(
              child: const Icon(Icons.search),
              onPressed: () {
                Fluttertoast.showToast(msg: "Clicked Floating Action");
              },
            ),
            // Cupertino Button
            CupertinoButton(
              child: const Text('Cupertino Button'),
              onPressed: () {
                Fluttertoast.showToast(msg: "Clicked Cupertino Button");
              },
            ),
            // Icon Button
            IconButton(
                onPressed: () {
                  Fluttertoast.showToast(msg: "Clicked Icon Button");
                },
                icon: const Icon(Icons.add)),
            // Dropdown Button
            DropdownButton(
              value: widget._value,
              hint: const Text("Drop Down"),
              items: const [
                DropdownMenuItem(
                  value: 'One',
                  child: Text('One'),
                ),
                DropdownMenuItem(
                  value: 'Two',
                  child: Text('Two'),
                ),
                DropdownMenuItem(
                  value: 'Three',
                  child: Text('Three'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  widget._value = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
