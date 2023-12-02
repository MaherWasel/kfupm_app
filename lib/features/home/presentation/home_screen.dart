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
        color:Color.fromRGBO(3, 84, 38, 1),

        child: ListView(
        children: [
          HomePageAppBar(),
          SizedBox(
            height: Sizes.p8,
          ),
          SizedBox(
            height: deviceData.height*1.2/3,
            child: Announcments()),
          SizedBox(
            height: Sizes.p8,
          ),
          IconWidget()
        ],
      ),
      ),
    );
  }
}



