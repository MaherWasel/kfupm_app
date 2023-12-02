import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/Icons/columns/Col_element.dart';
import 'package:kfupm_app/features/home/presentation/Icons/services/grades_and_gpa.dart';
import 'package:page_transition/page_transition.dart';

class AcademicColumn extends StatelessWidget{
  const AcademicColumn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        InkWell(
          onTap: (){
            print("alo");
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GradesAndGpa()));
          },
          child: ColElement(icon: Icons.card_membership, text: "Grades and Gpa")),
        ColElement(icon: Icons.calendar_today, text: "CLASS SCHEDULE"),
        ColElement(icon: Icons.person, text: "ACADEMIC PROFILE")


      ],
    );
  }

}