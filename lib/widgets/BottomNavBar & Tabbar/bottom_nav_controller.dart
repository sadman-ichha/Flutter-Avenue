import 'package:flutter/material.dart';
import 'package:flutter_avenue/widgets/BottomNavBar%20&%20Tabbar/bottomNavPages/chat_screen.dart';
import 'package:flutter_avenue/widgets/BottomNavBar%20&%20Tabbar/bottomNavPages/favroite_screen.dart';
import 'package:flutter_avenue/widgets/BottomNavBar%20&%20Tabbar/bottomNavPages/home_screen.dart';

class BottomNavControllar extends StatefulWidget {
  @override
  State<BottomNavControllar> createState() => _BottomNavControllarState();
}

class _BottomNavControllarState extends State<BottomNavControllar> {
  //const BottomNavControllar({super.key});
  int _currentIndex = 0;

  List pages = const [
    HomeScreen(),
    FavroiteScreen(),
    ChatScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "Favorite"),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
          ]),
      body: pages[_currentIndex],
    );
  }
}
