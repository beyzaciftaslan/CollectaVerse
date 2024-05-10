import 'package:flutter/material.dart';

class MySquareTile extends StatelessWidget {
  final String imagePath;
  const MySquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(imagePath),
    );
  }
}
