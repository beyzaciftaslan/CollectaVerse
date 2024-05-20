// import 'package:cloud_firestore/cloud_firestore.dart';

// class FirestoreService {
// // get collections of posts
//   final CollectionReference posts =
//       FirebaseFirestore.instance.collection("posts");

// //create: add a new post
//   Future<void> addPost(String text) {
//     return posts.add({
//       "text": text,
//       "timestamp": Timestamp.now(),
//     });
//   }

// //read
//   Stream<QuerySnapshot> getPostStream() {
//     final postsStream =
//         posts.orderBy("timestamp", descending: true).snapshots();
//     return postsStream;
//   }

// //update
//   Future<void> updatePost(String docId, String newText) {
//     return posts.doc(docId).update({
//       'text': newText,
//       'timestamp': Timestamp.now(),
//     });
//   }

// //delete
// Future<void> deletePost(String docId) {
//     return posts.doc(docId).delete();
//   }

// }
