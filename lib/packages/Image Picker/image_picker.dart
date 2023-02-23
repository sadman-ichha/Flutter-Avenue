import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagesPicker extends StatefulWidget {
  @override
  State<ImagesPicker> createState() => _ImagesPickerState();
}

class _ImagesPickerState extends State<ImagesPicker> {
  //const ImagePicker({super.key});
  final ImagePicker _picker = ImagePicker();

  XFile? image;

  List<XFile>? images;

  fromCamera() async {
    final cameraImg = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  fromGallery() {}

  pickMultiImage() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Image Picker"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.file(File(image!.path)),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.photo_camera)),
              const SizedBox(width: 15.0),
              IconButton(onPressed: () {}, icon: const Icon(Icons.photo)),
            ],
          ),
          const Divider(thickness: 10.0, color: Colors.blue),
          ElevatedButton(
              onPressed: () {}, child: const Text("Pick Multi Image")),

          const Center(child: Text("Empty List")),
        ],
      ),
    );
  }
}
