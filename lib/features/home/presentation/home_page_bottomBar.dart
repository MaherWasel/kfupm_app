import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePageBottomBar extends StatelessWidget {
  //  index 1 represenet the home screen which is the main

  int index_ = 1;
  final Function controller;
  // takes the function of changing the input of the bottom navigator
  HomePageBottomBar({required this.controller,super.key});
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: const Color.fromARGB(99, 158, 158, 158),
      backgroundColor: Color.fromRGBO(14, 95, 50, 1),

      index: index_,
      onTap: (index) {
        controller(index);
      },
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
