
import 'package:collecta_verse_pt2/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      //sf kullandigimda ustteki appbar gitti
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: GNav(
            backgroundColor: Colors.white,
            tabActiveBorder:
                Border.all(color: color4, width: 1), // tab button border
            activeColor: color4,
            color: Colors.black,
            tabBackgroundColor: Colors.grey.shade100,
            gap: 8,
            padding: const EdgeInsets.all(15),
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
          ),
        ),
      ),
    );
  }
}
