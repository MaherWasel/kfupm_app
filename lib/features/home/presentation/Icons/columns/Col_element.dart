import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:kfupm_app/features/home/presentation/Icons/services/vailoations_screen.dart';

class ColElement extends StatelessWidget {
  final IconData icon;
  final String text;
  const ColElement({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final height = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const VailoationsScreen()), // Replace NextScreen() with the target screen widget
        );
      },
      child: Container(
        margin: const EdgeInsets.all(Sizes.p8),
        padding: const EdgeInsets.all(Sizes.p12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p12),
            color: const Color.fromARGB(62, 158, 158, 158),
            border:
                Border.all(color: const Color.fromARGB(168, 255, 255, 255))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height / 11,
              width: Sizes.p64,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 68, 63, 63),
                  borderRadius: BorderRadius.circular(Sizes.p8),
                  border: Border.all(color: Colors.white)),
              child: Icon(
                icon,
                color: Colors.white,
                size: Sizes.p48,
              ),
            ),
            Text(
              text.toUpperCase(),
              style: midTextL.copyWith(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: Sizes.p12,
            )
          ],
        ),
      ),
    );
  }
}
