import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Home Screen"),
            centerTitle: true,
            backgroundColor: Colors.purple,
            bottom: const TabBar(tabs: [
              Tab(text: 'Request Quote', icon: Icon(Icons.request_quote)),
              Tab(text: 'Notifications', icon: Icon(Icons.notifications)),
              Tab(text: 'business', icon: Icon(Icons.business)),
            ]),
          ),
          body: const TabBarView(children: [
            Center(child: Text('Content for Tab Request Quote')),
            Center(child: Text('Content for Tab Notifications')),
            Center(child: Text('Content for Tab business')),
          ])),
    );
  }
}
