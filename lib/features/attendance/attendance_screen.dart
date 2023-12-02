import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/home_page_appBar.dart';
import 'package:kfupm_app/features/home/presentation/home_page_bottomBar.dart';
import 'package:kfupm_app/features/attendance/semesters_dropdown.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomePageAppBar(),
      bottomNavigationBar: HomePageBottomBar(),
      body: Column(
        children: [
          SemesterDropDown(),
          //Put a data table that updates based on the controller
        ],
      ),
    );
  }
}
