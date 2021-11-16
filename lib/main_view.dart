import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project1/constants.dart';
import 'package:project1/sub_view.dart';

class MainView extends StatefulWidget {
  const MainView({Key key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.lightGreen,
        currentIndex: currentIndex,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(kHomeSvg), label: "Home"),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(kHeartSvg),
              label: "Heart",
              backgroundColor: Colors.white),
        ],
      ),
      // We use IndexedStack to control the flow from one view to another
      body: IndexedStack(
        index: currentIndex,
        children: [
          SubView(),
          Container(
            color: Colors.lightGreen[300],
            child: Center(child: Text("HAHAHAH")),
          )
        ],
      ),
    );
  }
}
