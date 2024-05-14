import 'dart:typed_data';

import 'package:collecta_verse_pt2/components/my_button.dart';
import 'package:collecta_verse_pt2/services/firestore.dart';
import 'package:collecta_verse_pt2/utils/colors.dart';
import 'package:collecta_verse_pt2/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_icons/line_icon.dart';

class AddPostPage extends StatefulWidget {
  const AddPostPage({super.key});

  @override
  State<AddPostPage> createState() => _AddPostPageState();
}

class _AddPostPageState extends State<AddPostPage> {
//firestre
  final FirestoreService firestoreService = FirestoreService();
  //controller for the textfield
  final TextEditingController textController = TextEditingController();

  void openPostBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: TextField(
          //user input
          controller: textController,
        ),
        actions: [
          //button to post
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(Colors.grey),
            ),
            onPressed: () {
              //add a new post
              firestoreService.addPost(textController.text);
              //
              textController.clear();
              //
              Navigator.pop(context);
            },
            child: Text("Post"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Post"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          openPostBox();
        },
        child: const Icon(
          color: color4,
          Icons.add),
      ),
      body: StreamBuilder(b,),
    );
  }
}
