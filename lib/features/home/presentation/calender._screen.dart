import 'package:flutter/material.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(10),
        height: deviceData.height,
        width: deviceData.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(147, 128, 50, 1),
              Color.fromRGBO(14, 95, 50, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Image.asset(
          "assets/planer.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
