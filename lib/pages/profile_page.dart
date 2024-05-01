import 'package:collecta_verse_pt2/utils/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  //tabs
  final List<Widget> tabs = const [
    //pictures tab
    Tab(
      icon: Icon(Icons.image, color: color4),
    ),
    //videos tab
    Tab(
      icon: Icon(Icons.video_collection, color: color4),
    ),
    //proofs tab
    Tab(
      icon: Icon(Icons.favorite, color: color4),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Column(
          children: [
            //tabbar
            TabBar(
              indicatorColor: color4,
              tabs: tabs,
            ),

            //tabbarview
            //TabBarView(children: children),
          ],
        ),
      ),
    );
  }
}
