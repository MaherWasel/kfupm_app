import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePageBottomBar extends StatelessWidget {
  int index_ = 0;

  HomePageBottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      index: index_,
      onTap: (index) {},
      items: const <Widget>[
        Icon(
          Icons.settings,
          color: Colors.blue,
        ),
        Icon(Icons.home, color: Colors.blue),
        Icon(
          Icons.camera_alt_rounded,
          color: Colors.blue,
        ),
      ],
    );
  }
}
