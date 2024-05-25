import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collecta_verse_pt2/components/my_drawer.dart';
import 'package:collecta_verse_pt2/pages/chat_page.dart';
import 'package:collecta_verse_pt2/utils/colors.dart';
import 'package:collecta_verse_pt2/widgets/post_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("  C O L L E C T A  V E R S E"),
        backgroundColor: color4,
        actions: [
          IconButton(
            icon: const Icon(Icons.chat),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ChatPage()),
              );
            },
          ),
        ],
      ),
      // body: StreamBuilder(stream: FirebaseFirestore.instance.collection('posts').snapshots(),
      // builder: builder),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('posts').snapshots(),
        builder: (context,
            AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) => PostCard(
              snap: snapshot.data!.docs[index].data(),
            ),
          );
        },
      ),
      drawer: const MyDrawer(),
      //Hawli navigation bar
      //bottomNavigationBar: const MyNavBar(),
    );
  }
}
