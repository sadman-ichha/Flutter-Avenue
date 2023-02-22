import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppExitScreen extends StatelessWidget {
  const AppExitScreen({Key? key}) : super(key: key);
// exit dialog & exit Method
  Future _exitDialog(context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Center(child: Text('Are You Sure to Close')),
            content: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('No'),
                  ),
                ),
                const SizedBox(width: 50.0),
                ElevatedButton(
                  onPressed: () => getOutOfApp(),
                  child: const Text('Yes'),
                ),
              ],
            ),
          );
        });
  }

  // platform select method
  getOutOfApp() {
    if (Platform.isIOS) {
      try {
        exit(0);
      } catch (e) {
        Fluttertoast.showToast(msg: "$e");
      }
    } else {
      try {
        SystemNavigator.pop();
      } catch (e) {
        Fluttertoast.showToast(msg: "$e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        _exitDialog(context);
        return Future.value(false);
      },
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () => _exitDialog(context),
              child: const Text("App Exit"),
            ),
          ),
        ),
      ),
    );
  }
}
