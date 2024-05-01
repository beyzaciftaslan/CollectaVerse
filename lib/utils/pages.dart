import 'package:collecta_verse_pt2/pages/home_page.dart';
import 'package:collecta_verse_pt2/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

List<Widget> homeScreenItems = [
  const HomePage(),
  const Text("Search user screen"),
  const Text("add post screen"),
  const Text('notifications'),
  const ProfilePage(),
];
