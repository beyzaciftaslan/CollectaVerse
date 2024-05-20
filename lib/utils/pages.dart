import 'package:collecta_verse_pt2/pages/add_post_page.dart';
import 'package:collecta_verse_pt2/pages/home_page.dart';
import 'package:collecta_verse_pt2/pages/notification_page.dart';
import 'package:collecta_verse_pt2/pages/profile_page.dart';
import 'package:collecta_verse_pt2/pages/search_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

const webScreenSize = 600;
List<Widget> homeScreenItems = [
  const HomePage(),
  const SearchPage(),
  const AddPostPage(),
  const NotificationPage(),
  ProfilePage(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
