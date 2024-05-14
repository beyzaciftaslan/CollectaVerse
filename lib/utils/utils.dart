import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//for picking image from gallery or camera(?)
pickImage(ImageSource source) async {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: source);
  if (_file != null) {
    //return await File(_file.path); //not very accessible
    return await _file.readAsBytes();
  }
  //print("No image selected");
}

showSnackBar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  ); //req to show a snackbar
}
