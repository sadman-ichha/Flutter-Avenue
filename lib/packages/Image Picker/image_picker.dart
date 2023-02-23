import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePicker extends StatelessWidget {
  //const ImagePicker({super.key});
  final ImagePicker _picker = ImagePicker();
  XFile? image;
  List<XFile>? images;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.amber,
              )),
          Expanded(
              flex: 1,
              child: Container(
                color: Colors.black,
              ))
        ],
      ),
    );
  }
}
