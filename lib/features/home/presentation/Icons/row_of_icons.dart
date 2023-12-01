import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/Icons/singleIcon.dart';

class RowOfIcon extends StatelessWidget{
  final bool violationIsActive;
  final bool academicIsActive;
  final bool bookingIsActive;
  final Function onPress;
  const RowOfIcon({required this.onPress, required this.violationIsActive,required this.academicIsActive,required this.bookingIsActive,
   super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleIcon(
          isActive: violationIsActive,
          icon:Icons.directions_car,
          text:"Violation",
          onPress: onPress,
          
          
        ),
        SingleIcon(
          onPress: onPress,
          isActive: academicIsActive,
          icon:Icons.school,
          text:"Academic"
        ),
        SingleIcon(
          isActive: bookingIsActive,
          icon:Icons.pending_actions,
          text:"Booking",
          onPress: onPress,
        )
      ],
    );
  }

}