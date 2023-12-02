import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class GpaWidget extends StatelessWidget {
  final gpa;

  const GpaWidget({super.key, required this.gpa});
  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(Sizes.p16),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(Sizes.p8)),
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: deviceSizes.width / 2,
              margin: EdgeInsets.all(Sizes.p8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.p12),
                  color: Color.fromARGB(255, 8, 108, 11)),
              child: Column(children: [
                SizedBox(
                  height: Sizes.p12,
                ),
                Text(
                  "Gpa & Badge",
                  style: midTextL.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(gpa.toString(),
                    style: midTextL.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                SizedBox(
                  height: Sizes.p12,
                ),
              ]),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 8, 108, 11),
                borderRadius: BorderRadius.circular(Sizes.p16)),
            child: Icon(
              Icons.star,
              size: 100,
              color: Color.fromARGB(255, 215, 194, 6),
            ),
          )
        ],
      ),
    );
  }
}
