import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroPage2 extends StatelessWidget {
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
                'https://lottie.host/78da947f-da49-4ac2-af7f-b0b5bc31a94c/KXrNlTsBU4.json',
                width: 250,
                height: 250,
              ),
              SizedBox(height: 20),
              Text('Sell or trade your collection products easily!'),
            ],
          ),
        ],
      ),
    );
  }
}
