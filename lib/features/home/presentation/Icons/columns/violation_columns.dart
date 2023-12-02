import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/Icons/columns/Col_element.dart';
import 'package:kfupm_app/features/home/presentation/services/ViolationScreen.dart';
import 'package:kfupm_app/features/home/presentation/services/dorms_violation.dart';

class ViolationColumn extends StatelessWidget {
  const ViolationColumn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => VailoationsScreen()));
            },
            child: ColElement(
                icon: Icons.local_police, text: "VEHICLE VIOLATIONS")),
        InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DormsVailoationsScreen()));
            },
            child: ColElement(icon: Icons.home, text: "DOORMS VIOLATIONS"))
      ],
    );
  }
}
