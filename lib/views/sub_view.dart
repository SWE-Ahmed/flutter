import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/components/post.dart';
import 'package:project1/constants.dart';

class SubView extends StatelessWidget {
  const SubView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // create the navigation bar at the top
      appBar: AppBar(
          title: const Text("Cash n Stash"),
          centerTitle: true,
          backgroundColor: Colors.green,
          // adds the icons to the navigation bar
          actions: [
            SvgPicture.asset(kHeartSvg),
            const SizedBox(
              // the sized box adds an empty box for allignment purposes
              width: 10,
            ),
            SvgPicture.asset(kMessengerSvg)
          ]),
      // wraps the first column picture in a column
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Post(),
            Post(),
            Post(),
            Post(),
          ],
        ),
      ),
      backgroundColor: Colors.lightGreenAccent,
    );
  }
}
