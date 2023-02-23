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
    image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  fromGallery() async {
    image = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  pickMultiImage() async {
    images = await _picker.pickMultiImage();
    setState(() {});
  }

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
          image == null
              ? const Center(child: Text("Empty Photos"))
              : ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.file(
                    File(image!.path),
                    width: 200.0,
                  ),
                ),
          const SizedBox(height: 10.0),

          // Camera Button & Gallery Button
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () => fromCamera(),
                  icon: const Icon(Icons.photo_camera)),
              const SizedBox(width: 15.0),
              IconButton(
                  onPressed: () => fromGallery(),
                  icon: const Icon(Icons.photo)),
            ],
          ),
          const Divider(thickness: 10.0, color: Colors.blue),
          ElevatedButton(
              onPressed: () => pickMultiImage(),
              child: const Text("Pick Multi Image")),

          images == null
              ? const Center(child: Text("Empty List"))
              : Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: SizedBox(
                    height: 150.0,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: images!.length,
                        itemBuilder: (context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.file(
                                File(images![index].path),
                                height: 150,
                              ),
                            ),
                          );
                        }),
                  ),
                )
        ],
      ),
    );
  }
}
