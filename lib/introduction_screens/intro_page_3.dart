import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                'https://lottie.host/bb06177e-cc27-4e4a-b690-d740cb2f47a3/BsKG4qNLYB.json',
                width: 300,
                height: 300,
              ),
              SizedBox(height: 20),
              Text('Connect with other collectors and share your collection!'),
            ],
          ),
        ],
      ),
    );
  }
}

