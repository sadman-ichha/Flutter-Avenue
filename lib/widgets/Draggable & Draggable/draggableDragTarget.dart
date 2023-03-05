import 'package:flutter/material.dart';

class DraggableScreen extends StatefulWidget {
  const DraggableScreen({super.key});

  @override
  State<DraggableScreen> createState() => _DraggableState();
}

var dataPath;
bool? onDragStarted = false;

class _DraggableState extends State<DraggableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drag & Drop"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable(
              data: const FlutterLogo(),
              feedback: const FlutterLogo(size: 100),
              childWhenDragging:
                  const FlutterLogo(style: FlutterLogoStyle.markOnly),
              child: const FlutterLogo(size: 70),
              onDragStarted: () {
                setState(() {
                  onDragStarted = true;
                });
              },
              onDragEnd: (details) {
                setState(() {
                  onDragStarted = false;
                });
              },
            ),
            100.ph,
            DragTarget(onAccept: (data) {
              setState(() {
                dataPath = data;
              });
            }, builder: (_, object, list) {
              return Container(
                height: 200.0,
                width: 200.0,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: dataPath == null ? const SizedBox() : dataPath,
              );
            }),
          ],
        ),
      ),
    );
  }
}

extension Padding on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}
