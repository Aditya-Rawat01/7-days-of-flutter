import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerWidget extends StatefulWidget {
  const ImagepickerWidget({super.key});

  @override
  State<ImagepickerWidget> createState() => _ImagepickerWidgetState();
}

class _ImagepickerWidgetState extends State<ImagepickerWidget> {
  XFile? stateImage;

  Future<void> pickImage()async{
  final ImagePicker imagepicker = ImagePicker();
  final XFile? photo = await imagepicker.pickImage(source: ImageSource.gallery);
  setState(() {
    stateImage = photo;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Picker"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)), color: Colors.grey.shade800),
              child: Center(child:stateImage==null?Text("Image not picked yet."):Image.file(File(stateImage!.path))),
            ),
            ElevatedButton(onPressed: pickImage, child: Text("Pick an Image"))
          ],
        ),
      ),
    );
  }
}

