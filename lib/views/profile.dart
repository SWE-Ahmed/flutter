// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project1/services/auth.dart';
import 'package:project1/views/sign_in_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Cash n Stash"),
          centerTitle: true,
          backgroundColor: Colors.green,
          // adds the icons to the navigation bar
          actions: [
            TextButton(
              onPressed: () {
                Auth.signOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SignInView()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'LogOut',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ]),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text("Profile Picture"),
            color: Colors.green[100],
          ),
        ],
      ),
    );
  }
}
