// import 'package:collecta_verse_pt2/pages/login_page.dart';
// import 'package:collecta_verse_pt2/pages/signup_page.dart';
// import 'package:flutter/material.dart';

// class LoginOrSignup extends StatefulWidget {
//   const LoginOrSignup({super.key});

//   @override
//   State<LoginOrSignup> createState() => _LoginOrSignupState();
// }

// class _LoginOrSignupState extends State<LoginOrSignup> {
//   //baslangicta login sayfasini goster
//   bool showLoginPage = true;

//   //login signuo gecis
//   void togglePages() {
//     setState(() {
//       showLoginPage = !showLoginPage;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (showLoginPage) {
//       return LoginPage(onTap: togglePages);
//     }else{
//       return SignupPage(onTap: togglePages);
//     }
//   }
// }
