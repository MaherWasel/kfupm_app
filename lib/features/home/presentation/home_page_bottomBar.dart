import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePageBottomBar extends StatelessWidget {
  int index_ = 1;

  HomePageBottomBar({super.key});
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: const Color.fromARGB(99, 158, 158, 158),
      backgroundColor: Color.fromRGBO(14, 95, 50, 1),

      index: index_,
      onTap: (index) {},
      items: const <Widget>[
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        Icon(Icons.home, color: Colors.white),
        Icon(
          Icons.camera_alt_rounded,
          color: Colors.white,
        ),
      ],
    );
  }
}
