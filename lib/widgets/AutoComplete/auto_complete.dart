import 'package:flutter/material.dart';

class AutoComplete extends StatelessWidget {
  const AutoComplete({super.key});

  static List<String> fruitName = <String>[
    'apple',
    'banana',
    'orange',
    'mango',
    'grapes',
    'watermelon',
    'kiwi',
    'strawberry',
    'Sugarcane',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AutoComplete"),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Enter Fruit name:"),
            Autocomplete(
              optionsBuilder: (TextEditingValue textEditingValue) {
                if (textEditingValue.text == "") {
                  return const Iterable<String>.empty();
                } else {
                  List<String> matches = <String>[];
                  matches.addAll(fruitName);
                  matches.retainWhere((element) => element.contains(
                        textEditingValue.text.toLowerCase(),
                      ));
                  return matches;
                }
              },
              onSelected: (String value) {
                debugPrint("You just Selected $value");
              },
            ),
          ],
        ),
      )),
    );
  }
}
