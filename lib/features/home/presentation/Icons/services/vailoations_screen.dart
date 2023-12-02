import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VailoationsScreen extends StatelessWidget {
  const VailoationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection("students")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .collection('vailations')
          .snapshots(),
      builder: (context, spanshot) {},
    );
  }
}
