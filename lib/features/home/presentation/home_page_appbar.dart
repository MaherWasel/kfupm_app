import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:kfupm_app/features/home/presentation/calender._screen.dart';
import 'package:kfupm_app/features/home/presentation/services/id_component.dart';

class HomePageAppBar extends ConsumerWidget {
  HomePageAppBar({super.key});
  final authUser = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection("students")
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SizedBox(
                width: double.infinity, child: CircularProgressIndicator());
          }
          return Container(
            margin: EdgeInsets.all(Sizes.p32),
            color: Colors.transparent,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const CalenderScreen()), // Replace NextScreen() with the target screen widget
                    );
                  },
                  icon: const Icon(
                    Icons.calendar_month,
                    size: Sizes.p32,
                  ),
                  color: const Color.fromARGB(255, 245, 241, 241),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "WELCOME",
                        style: midTextL.copyWith(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 245, 241, 241),
                        ),
                      ),
                      Text(
                        snapshot.data!['name'],
                        style: midTextL.copyWith(
                          fontSize: 24,
                          color: const Color.fromARGB(255, 245, 241, 241),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              IdComponent()), // Replace NextScreen() with the target screen widget
                    );
                  },
                  child: CircleAvatar(
                    child: Text(
                      snapshot.data!['name'].toUpperCase().substring(
                          0, 1), // Replace with the desired letter or character
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Color.fromARGB(255, 46, 139, 88),
                    // Replace with the desired background color
                  ),
                ),
              ],
            ),
          );
        });
  }
}
