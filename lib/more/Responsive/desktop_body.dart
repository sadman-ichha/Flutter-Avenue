import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        title: const Text("D E S K T O P"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: double.nan,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                //First Column
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      //youtube videos
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Container(
                            color: Colors.deepPurple,
                          ),
                        ),
                        // ),
                      ),
                      //comments & recommended videos
                      Expanded(
                        child: ListView.builder(
                          itemCount: 50,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100.0,
                                color: Colors.purple[400],
                                child: Center(
                                  child: Text("${index + 1}"),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                //second column
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: 50,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100.0,
                            color: Colors.purple[400],
                            child: Center(
                              child: Text("${index + 1}"),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
