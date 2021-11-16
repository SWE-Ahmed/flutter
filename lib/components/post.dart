import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // the main column of the app
      children: [
        // responsible for the first row of the app
        Container(
          color: Colors.lime,
          child: Row(
            children: [
              Image.network(
                "https://s2.reutersmedia.net/resources/r/?m=02&d=20201231&t=2&i=1546247358&w=640&fh=&fw=&ll=&pl=&sq=&r=LYNXMPEGBU0BI",
                width: 90,
                height: 100,
              ),
              const Text("  realApple"),
              const Spacer(), // adds a big space between the componets
              const Icon(Icons.more_horiz_rounded)
            ],
          ),
        ),
        // moves to the second row and adds its contents
        Column(
          children: [
            const SizedBox(height: 20),
            Image.network(
              "https://www.almrsal.com/wp-content/uploads/2021/04/1-98.jpg",
              height: 200,
              width: 400,
            ),
          ],
        ),
        // creates a column to adjust the text in the centre
        Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            // Text under Image...
            Text(
              "New Airtags... Bidding starting at \$100",
              style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.bold,
                  fontFamily: "San Serif"),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ],
    );
  }
}
