import 'package:flutter/material.dart';

class AppBar_PreferredSize extends StatelessWidget {
  // const AppBar_PreferredSize({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: AppBar(
            title: Text("Flutter Avenue"),
            centerTitle: true,
            backgroundColor: Colors.purple,
            leading:
                IconButton(onPressed: () {}, icon: Icon(Icons.view_agenda)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            ],
          ),
          preferredSize: Size.fromHeight(120.0)),
    );
  }
}
