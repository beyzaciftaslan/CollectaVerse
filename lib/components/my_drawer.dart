import 'package:collecta_verse_pt2/pages/login_page.dart';
import 'package:collecta_verse_pt2/pages/settings_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  // void logout() {
  //   FirebaseAuth.instance.signOut();
  // }

  void logout(BuildContext context) {
    FirebaseAuth.instance.signOut().then((_) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  // void logout() {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  //header
                  DrawerHeader(
                    child: Icon(
                      Icons.favorite,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),

                  const SizedBox(height: 25),
                  //tiles

                  //on sale n exchange
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        LineIcons.hashtag,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      title: const Text('on sale and exchange'),
                      onTap: () {
                        //
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  //groups
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.groups,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      title: const Text('groups'),
                      onTap: () {
                        //
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  //yer isaretleri//kaydettiklermilanlar
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        LineIcons.bookmark,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      title: const Text('bookmarks'),
                      onTap: () {
                        //
                        Navigator.pop(context);
                      },
                    ),
                  ),

                  //settings
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      title: const Text('settings'),
                      onTap: () {
                        //
                        Navigator.pop(context);
                        //navigate to settings
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SettingsPage(),
                          ),
                        );
                      },
                    ),
                  ),

                  //themechange
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: ListTile(
                      leading: Icon(
                        Icons.brightness_4,
                        color: Theme.of(context).colorScheme.inversePrimary,
                      ),
                      title: const Text('theme'),
                      onTap: () {
                        //
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),

              //logout

              Padding(
                padding: const EdgeInsets.only(left: 25, bottom: 25),
                child: ListTile(
                  onTap: () {
                    logout(context);
                  },
                  leading: Icon(
                    Icons.logout,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: const Text('logout'),
                ),
              ),
            ]));
  }
}
