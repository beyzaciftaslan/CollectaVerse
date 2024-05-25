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
              //PROFILE
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // following
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        '364',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Following',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                  //profile pic
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  // followers

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '364',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      // SizedBox(height: 3),
                      Text(
                        'Followers',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              // name
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Beyza Çiftaslan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), // Text
                  Text(' | '),
                  Text(
                    'Developer',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ), // Text
                ],
              ),
              const SizedBox(height: 7),
              // Row
              // bio
              Text(
                'UI Designer • Programmer • Student at Erciyes Uni',
                style: TextStyle(color: Colors.grey[600]),
              ), // Text

              const SizedBox(height: 3),

// link
              Text(
                'youtube.com/chogiwa',
                style: TextStyle(
                  color: Colors.blue[500],
                  fontWeight: FontWeight.bold,
                ),
              ), // Text

              const SizedBox(height: 15),
              // buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    // edit profile
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text("Edit Profile"),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Center(
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              TabBar(tabs: tabs),
              //tab bar view
              // SizedBox(child: TabBarView(children: tabBarView)),
            ],
          ),
        ),
      ),
    );
  }
}
