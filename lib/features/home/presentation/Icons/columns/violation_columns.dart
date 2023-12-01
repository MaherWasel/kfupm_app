import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/Icons/columns/Col_element.dart';

class ViolationColumn extends StatelessWidget{
  const ViolationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ColElement(icon: Icons.local_police, text: "VEHICLE VIOLATIONS"),
        ColElement(icon: Icons.home, text: "DOORMS VIOLATIONS")

      ],
    );
  }

}