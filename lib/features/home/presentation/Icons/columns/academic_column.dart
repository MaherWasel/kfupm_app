import 'package:flutter/material.dart';
import 'package:kfupm_app/features/attendance/attendance_screen.dart';
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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>GradesAndGpa()));
          },
          child: const ColElement(icon: Icons.card_membership, text: "Grades and Gpa")),
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>AttendanceScreen()));
          },
          child: const ColElement(icon: Icons.fingerprint, text: "Absences")),
        const ColElement(icon: Icons.person, text: "ACADEMIC PROFILE")


      ],
    );
  }

}