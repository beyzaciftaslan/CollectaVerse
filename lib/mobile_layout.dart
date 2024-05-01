import 'package:collecta_verse_pt2/utils/colors.dart';
import 'package:collecta_verse_pt2/utils/pages.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MobileScreenLayout extends StatefulWidget {
  const MobileScreenLayout({super.key});

  @override
  State<MobileScreenLayout> createState() => _MobileScreenLayoutState();
}

class _MobileScreenLayoutState extends State<MobileScreenLayout> {
  int _page = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    //for animate the page icin
    _pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: homeScreenItems,
        controller: _pageController,
        onPageChanged: onPageChanged,
      ),


      //Havali navigation bar
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
          child: GNav(
            backgroundColor: Colors.white,
            tabActiveBorder:
                Border.all(color: color4, width: 1), // tab button border
            activeColor: color4,
            color: Colors.black,
            tabBackgroundColor: Colors.grey.shade100,
            gap: 8,
            padding: EdgeInsets.all(15),
            tabs: const [
              //Ev
              GButton(
                icon: LineIcons.home,
                text: ' Home',
              ),
              //search
              GButton(
                icon: LineIcons.search,
                text: ' Search',
              ),
              //add posts
              GButton(
                icon: LineIcons.plus,
                text: ' Add',
              ),
              //notifications
              GButton(
                icon: LineIcons.heart,
                text: ' Notifications',
              ),
              //proifil
              GButton(
                icon: LineIcons.user,
                text: ' Profile',
              ),
            ],
            onTabChange: navigationTapped,
            selectedIndex: _page,
          ),
        ),
      ),
    );
  }
}
