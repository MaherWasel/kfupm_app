import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:kfupm_app/features/home/presentation/Icons/iconWidgets.dart';
import 'package:kfupm_app/features/home/presentation/anouncments/anouncments.dart';
import 'package:kfupm_app/features/home/presentation/home_page_appBar.dart';
import 'package:kfupm_app/features/home/presentation/home_page_bottomBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: HomePageBottomBar(),
      body: Container(
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
        child: Column(
          children: [HomePageAppBar(), Announcments()],
        ),
      ),
    );
  }
}
