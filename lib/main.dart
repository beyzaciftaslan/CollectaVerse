//import 'package:collecta_verse_pt2/landing_page.dart';
import 'package:collecta_verse_pt2/auth/login_or_signup.dart';
//import 'package:collecta_verse_pt2/pages/login_page.dart';
//import 'package:collecta_verse_pt2/pages/signup_page.dart';
import 'package:collecta_verse_pt2/theme/dark_mode.dart';
import 'package:collecta_verse_pt2/theme/light_mode.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrSignup(),
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
