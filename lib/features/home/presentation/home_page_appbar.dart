import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class HomePageAppBar extends ConsumerWidget implements PreferredSizeWidget {
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
          return AppBar(
            title: Container(
              margin: const EdgeInsets.all(Sizes.p8),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.calendar_month,
                        size: Sizes.p32,
                      )),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "WELCOME",
                          style: midTextL.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          snapshot.data!['name'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    child: Text(
                      snapshot.data!['name'].toUpperCase().substring(
                          0, 1), // Replace with the desired letter or character
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    backgroundColor: Colors
                        .blue, // Replace with the desired background color
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
