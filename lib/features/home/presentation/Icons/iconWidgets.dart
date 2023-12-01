import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/Icons/singleIcon.dart';

class IconWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleIcon(
          icon:Icons.pending_actions,
          text:"Violation"
        ),
        SingleIcon(
          icon:Icons.school,
          text:"Academic"
        ),
        SingleIcon(
          icon:Icons.school,
          text:"Booking"
        )
      ],
    );
  }

}