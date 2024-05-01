import 'package:collecta_verse_pt2/components/my_drawer.dart';
import 'package:collecta_verse_pt2/components/my_nav_bar.dart';
import 'package:collecta_verse_pt2/utils/colors.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void logout() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("  C O L L E C T A  V E R S E"),
        backgroundColor: color4,
        elevation: 0,
        actions: [
          //logout button
          IconButton(
            onPressed: logout,
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      drawer: const MyDrawer(),
      //Hawli navigation bar
      bottomNavigationBar: const MyNavBar(),
    );
  }
}
