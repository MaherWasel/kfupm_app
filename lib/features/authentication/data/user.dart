import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'user.g.dart';

 class UserRepository{

  FirebaseAuth instance = FirebaseAuth.instance;
  void login({required String email,required String password }){
    try{
      instance.signInWithEmailAndPassword(email: email, password: password);
    }
    on FirebaseAuthException catch (error) {
      throw Exception();
    }
  }


  void signOut(){
    try{
      instance.signOut();
    }
    on FirebaseAuthException catch (error) {
      throw Exception();
    }
  }
}

@riverpod
UserRepository userRepo (UserRepoRef ref) {
  return UserRepository();
}