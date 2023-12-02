import 'package:flutter/material.dart';

class GpaWidget extends StatelessWidget {
  final gpa;

  const GpaWidget({super.key, required this.gpa});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Container(
            color: const Color.fromARGB(255, 16, 78, 18),
            child: Column(
              children: [
                const Text('GPA & Badge'),
                Text(
                  '$gpa',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
