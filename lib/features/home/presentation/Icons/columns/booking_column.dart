import 'package:flutter/material.dart';
import 'package:kfupm_app/features/home/presentation/Icons/columns/Col_element.dart';

class BookingColumn extends StatelessWidget{
  const BookingColumn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Column(
      children: [
        ColElement(icon: Icons.sports_esports, text: "BOULEVARD"),
        ColElement(icon: Icons.umbrella, text: "KFUPM BEACH"),
        ColElement(icon: Icons.home, text: "ACDEMIC ROOM")


      ],
    );
  }

}