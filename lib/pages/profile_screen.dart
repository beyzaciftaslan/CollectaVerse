import 'package:collecta_verse_pt2/pages/profile%20tabs/feed_view.dart';
import 'package:collecta_verse_pt2/pages/profile%20tabs/proofs_view.dart';
import 'package:collecta_verse_pt2/pages/profile%20tabs/video_view.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Widget> tabs = const [
    //feed tab
    Tab(
        icon: Icon(
      Icons.image,
      color: Colors.grey,
    )),
    Tab(
        icon: Icon(
      Icons.video_collection,
      color: Colors.grey,
    )),
    Tab(
        icon: Icon(
      Icons.star,
      color: Colors.grey,
    )),
  ];

  final List<Widget> tabBarView = const [
    //img feed
    FeedView(),
    //video feed
    VideoView(),
    //proofs feed
    ProofsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              //PROFILE DETAILS
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // following
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children:  [
                      Text(
                        '364',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('Following',
                      style: TextStyle(color: Colors.grey[600]),),
                    ],
                  ),
                  // profile pic
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // followers

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '364',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(height: 3),
                      Text('Followers',
                          style: TextStyle(color: Colors.grey[600]),),
                    ],
                  ),
                ],
              ),


              TabBar(tabs: tabs),
              //tab bar view
              Expanded(child: TabBarView(children: tabBarView))
            ],
          ),
        ),
      ),
    );
  }
}
