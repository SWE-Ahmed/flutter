import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static CollectionReference posts =
      FirebaseFirestore.instance.collection('posts');

  static Future<void> addPost() {
    posts.doc(posts.id).set('');
  }
}
