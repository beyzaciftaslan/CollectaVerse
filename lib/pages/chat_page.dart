// // import 'package:collecta_verse_pt2/services/auth/g_auth_service.dart';
// // import 'package:collecta_verse_pt2/services/auth/auth_service.dart';
// // import 'package:collecta_verse_pt2/services/auth/chat/chat_service.dart';
// import 'package:flutter/material.dart';

// class ChatPage extends StatelessWidget {
//   const ChatPage({super.key});


//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Text("Chat Page"),
//       ),
//     );
//   }
// }

// import 'package:collecta_verse_pt2/services/auth/g_auth_service.dart';
// import 'package:collecta_verse_pt2/services/auth/auth_service.dart';
// import 'package:collecta_verse_pt2/services/auth/chat/chat_service.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Page"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: const Center(
        child: Text("Chat Page"),
      ),
    );
  }
}

