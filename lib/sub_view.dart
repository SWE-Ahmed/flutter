import 'package:flutter/material.dart';

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
          actions: const [
            Icon(Icons.add),
            SizedBox(
              // the sized box adds an empty box for allignment purposes
              width: 10,
            ),
            Icon(Icons.message)
          ]),
      body: Column(
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
                  height: 120,
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
                height: 30,
              ),
              // Text under Image...
              Text(
                "New Airtags... Bidding starting at \$100",
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold,
                    fontFamily: "San Serif"),
              ),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          // the following column block adds the "Cash N Stash button" button to the app
          Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(fontSize: 20),
                  padding: EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text("Cash N Stash"),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
      backgroundColor: Colors.lightGreenAccent,
    );
  }
}
