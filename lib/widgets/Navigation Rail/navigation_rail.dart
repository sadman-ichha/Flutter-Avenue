import 'package:flutter/material.dart';

class NaigationRail extends StatefulWidget {
  @override
  State<NaigationRail> createState() => _NaigationRailState();
}

class _NaigationRailState extends State<NaigationRail> {
  int _selectedIndex = 0;
  final List _pages = [
    Container(child: const Center(child: Text('Wifi'))),
    Container(child: const Center(child: Text('Favourite'))),
    Container(child: const Center(child: Text('Camera'))),
    Container(child: const Center(child: Text('Home'))),
  ];
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(brightness: Brightness.dark),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Navigation Rail"),
            centerTitle: true,
            // backgroundColor: Colors.purple,
          ),
          body: Row(
            children: [
              NavigationRail(
                elevation: 15.0,
                useIndicator: true,
                labelType: NavigationRailLabelType.all,
                selectedLabelTextStyle: const TextStyle(color: Colors.black),
                backgroundColor: Colors.grey,
                indicatorColor: Colors.cyan,
                minWidth: 80.0,
                selectedIndex: _selectedIndex,
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                destinations: const [
                  NavigationRailDestination(
                      icon: Icon(Icons.wifi, color: Colors.black),
                      label: Text("Wifi")),
                  NavigationRailDestination(
                      icon: Icon(Icons.favorite_border, color: Colors.black),
                      label: Text("favorite")),
                  NavigationRailDestination(
                      icon: Icon(Icons.linked_camera_outlined,
                          color: Colors.black),
                      label: Text("Camera")),
                  NavigationRailDestination(
                      icon: Icon(Icons.house, color: Colors.black),
                      label: Text("Home")),
                ],
              ),
              Expanded(
                  child: Container(
                child: _pages[_selectedIndex],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
