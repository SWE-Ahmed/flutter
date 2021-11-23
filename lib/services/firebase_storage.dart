import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:project1/services/auth.dart';

class FirebaseStorageServices {
  static FirebaseStorage storage = FirebaseStorage.instance;

  static Future<void> uploadPost(File image) async {
    try {
      String imgURL = await (await storage
              .ref('uploads/${Auth.getUser().uid}/posts')
              .putFile(image))
          .ref
          .getDownloadURL();
      return imgURL;
    } on FirebaseException catch (e) {
      // e.g, e.code == 'canceled'
    }
  }
}
