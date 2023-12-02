import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class GradesAndGpa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(Sizes.p12),

        child: ListView(
          children: [
            const SizedBox(
              height: Sizes.p12,
            ),
            Center(
              child: Text("Grades and Gpa ",
              style: midTextL,),
            )

          ],
        ),
      ),
    );
  }

}