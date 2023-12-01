import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/anouncments/anouncments.dart';
import 'package:kfupm_app/features/home/presentation/home_page_appBar.dart';
import 'package:kfupm_app/features/home/presentation/home_page_bottomBar.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: HomePageAppBar(),
      bottomNavigationBar: HomePageBottomBar(),
      body: Column(
        children: [
          Announcments()
        ],
      ),
      
    );
  }

}