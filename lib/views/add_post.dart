// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project1/services/firebase_storage.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key key}) : super(key: key);

  @override
  _AddPostState createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  File image;
  String comment;
// fist method to execute when called
  @override
  void initState() {
    pickImage();
    super.initState();
  }

  pickImage() async {
    final ImagePicker _picker = ImagePicker();
    // Pick an image
    final XFile pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(pickedImage.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          title: Text("Add new post"),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          centerTitle: false,
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        body: image != null
            ? SafeArea(
                child: Container(
                clipBehavior: Clip.hardEdge,
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      BoxShadow(color: Colors.black, blurRadius: 5),
                    ],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 2,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: FileImage(image), fit: BoxFit.contain)),
                    ),
                    Divider(),
                    Padding(padding: EdgeInsets.all(10)),
                    GestureDetector(
                      onTap: () async {
                        FirebaseStorageServices.uploadPost(image);
                      },
                      child: Container(
                        height: 20,
                        margin: EdgeInsets.all(16),
                        child: MaterialButton(
                          child: Text(
                            "Upload",
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
            : SizedBox());
  }
}
