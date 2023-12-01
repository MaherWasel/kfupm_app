import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/home_page_appbar.dart';

class CalenderScreen extends StatelessWidget {
  const CalenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(),
    );
  }
}
