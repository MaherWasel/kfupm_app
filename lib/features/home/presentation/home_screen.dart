import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:kfupm_app/features/home/presentation/Icons/iconWidgets.dart';
import 'package:kfupm_app/features/home/presentation/anouncments/anouncments.dart';
import 'package:kfupm_app/features/home/presentation/home_page_appBar.dart';
import 'package:kfupm_app/features/home/presentation/home_page_bottomBar.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: HomePageAppBar(),
      bottomNavigationBar: HomePageBottomBar(),
      body: Column(
        children: [
          SizedBox(
            height: Sizes.p8,
          ),
          SizedBox(
            height: height/4,
            child: Announcments()),
          SizedBox(
            height: Sizes.p8,
          ),
          IconWidget()
        ],
      ),
      
    );
  }

}