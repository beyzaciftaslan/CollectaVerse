import 'package:collecta_verse_pt2/auth/login_or_signup.dart';
import 'package:collecta_verse_pt2/mobile_layout.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage
({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user logged inn
          if(snapshot.hasData){
            return const MobileScreenLayout();
          }

          ///user not logged in
          else{
            return const LoginOrSignup();
          }
        },
    ),
    );
  }
}