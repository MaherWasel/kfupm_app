import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user.g.dart';

class UserRepository {
  FirebaseAuth instance = FirebaseAuth.instance;
  void login({required String email, required String password}) async {
    try {
      await instance.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (error) {
      throw Exception();
    }
  }

  void signOut() {
    try {
      instance.signOut();
    } on FirebaseAuthException catch (error) {
      throw Exception();
    }
  }

  Future<String> getData() async {
    final authUser = FirebaseAuth.instance.currentUser!;
    final studentData = await FirebaseFirestore.instance
        .collection('students')
        .doc(authUser.uid)
        .get();

    return await studentData.data()!['name'];
  }
}

@riverpod
UserRepository userRepo(UserRepoRef ref) {
  return UserRepository();
}
