import 'package:flutter/material.dart';

class NaigationRail extends StatefulWidget {
  const NaigationRail({super.key});

  @override
  State<NaigationRail> createState() => _NaigationRailState();
}

class _NaigationRailState extends State<NaigationRail> {
  int _selectedIndex = 0;
  final List _pages = [
    Container(
        color: Colors.blueAccent, child: const Center(child: Text('Wifi'))),
    Container(
        color: Colors.green, child: const Center(child: Text('Favourite'))),
    Container(color: Colors.grey, child: const Center(child: Text('Camera'))),
    Container(color: Colors.amber, child: const Center(child: Text('Home'))),
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
                labelType: NavigationRailLabelType.all,
                selectedIndex: _selectedIndex,
                leading: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent.fdac90-1.fna.fbcdn.net/v/t39.30808-6/273148842_1133453604057186_7871472092129708407_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHDUMHAalqpw9DK5Bdto9X96AqBwf5CqVjoCoHB_kKpWP2sOm2x3s7HQC98XQ9Qk_fS9YUY10sM4lY88g0Lr_7Q&_nc_ohc=sTJ-n4u-pTIAX8HKmWF&_nc_oc=AQkqeUqcxoEfEulask1B0z4FfOnizi36XW6ofwySDuLYDWk2Ih-fgiYZ7Rboq5J_t1c&_nc_ht=scontent.fdac90-1.fna&oh=00_AfBuKEeH0jutjYuza3ODb2WcV4H7YVZ7uxXLbK-TRqHIJQ&oe=63FA1850"),
                  ),
                ),
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                destinations: const [
                  NavigationRailDestination(
                      icon: SizedBox.shrink(),
                      label: RotatedBox(quarterTurns: -1, child: Text("Wifi"))),
                  NavigationRailDestination(
                      icon: SizedBox.shrink(),
                      label: RotatedBox(
                          quarterTurns: -1, child: Text("Favorite"))),
                  NavigationRailDestination(
                      icon: SizedBox.shrink(),
                      label:
                          RotatedBox(quarterTurns: -1, child: Text("Camera"))),
                  NavigationRailDestination(
                      icon: SizedBox.shrink(),
                      label: RotatedBox(quarterTurns: -1, child: Text("Home"))),
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
