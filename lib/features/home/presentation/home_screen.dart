import 'package:flutter/material.dart';
import 'package:kfupm_app/features/attendance/attendance_screen.dart';
import 'package:kfupm_app/features/attendance/cameraScreen.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:kfupm_app/features/home/presentation/Icons/iconWidgets.dart';
import 'package:kfupm_app/features/home/presentation/anouncments/anouncments.dart';
import 'package:kfupm_app/features/home/presentation/services/extraServices.dart';
import 'package:kfupm_app/features/home/presentation/home_content.dart';
import 'package:kfupm_app/features/home/presentation/home_page_appBar.dart';
import 'package:kfupm_app/features/home/presentation/home_page_bottomBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget content = HomeContent();
  void controller(int index) {
    if (index == 0) {
      setState(() {
        content = ExtraServices();
      });
    } else if (index == 1) {
      setState(() {
        content = HomeContent();
      });
    } else {
      setState(() {
        content = CameraScreen();
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
