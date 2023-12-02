import 'package:flutter/material.dart';
import 'package:kfupm_app/features/attendance/cameraScreen.dart';
import 'package:kfupm_app/features/home/presentation/services/extraServices.dart';
import 'package:kfupm_app/features/home/presentation/home_content.dart';

import 'package:kfupm_app/features/home/presentation/home_page_bottomBar.dart';

class HomeScreen extends StatefulWidget  {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
// StateFull for rebuilding the content the main content in the main screen
class _HomeScreenState extends State<HomeScreen> {
  Widget content = const HomeContent();
  void controller(int index) {
    if (index == 0) {
      setState(() {
        content = ExtraServices();
      });
    } else if (index == 1) {
      setState(() {
        content = const HomeContent();
      });
    } else {
      setState(() {
        content = QRScannerScreen();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: HomePageBottomBar(controller: controller),
      body: content,
    );
  }
}
