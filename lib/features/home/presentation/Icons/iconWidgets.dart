import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/Icons/columns/Col_element.dart';
import 'package:kfupm_app/features/home/presentation/Icons/columns/academic_column.dart';
import 'package:kfupm_app/features/home/presentation/Icons/columns/booking_column.dart';
import 'package:kfupm_app/features/home/presentation/Icons/columns/violation_columns.dart';

import 'package:kfupm_app/features/home/presentation/Icons/row_of_icons.dart';


class IconWidget extends StatefulWidget{
  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  bool violationIsActive =false;

  bool academicIsActive =true;

  bool bookingIsActive =false;
  void pressed(String title){
    if (title=="Violation"){
      setState(() {
        violationIsActive=true;
        academicIsActive=false;
        bookingIsActive=false;
        content=ViolationColumn();
      });
    }
    else if (title=="Academic"){
      setState(() {
        violationIsActive=false;
        academicIsActive=true;
        bookingIsActive=false;
        content=AcademicColumn();
      });
    }
    else {
      setState(() {
        violationIsActive=false;
        academicIsActive=false;
        bookingIsActive=true;
        content=BookingColumn();

      });
    }
  }
   Widget content=AcademicColumn();
  @override
  Widget build(BuildContext context) {
   

    return Column(
      children: [
        RowOfIcon(
          violationIsActive: violationIsActive,
          academicIsActive: academicIsActive,
          bookingIsActive: bookingIsActive,
          onPress: pressed,
          
        ),
        content
        

      ],
    );
  }
}