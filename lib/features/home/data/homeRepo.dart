
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'homeRepo.g.dart';

class HomeRepository{
  FirebaseFirestore instance=FirebaseFirestore.instance;
  Stream<DocumentSnapshot<Map<String, dynamic>>> getAnouncments(){
   try{
    final anoucnments=instance.collection("kfupm").doc("anouncments").snapshots();
    return anoucnments;
   }
   on FirebaseFirestore catch(error){
    throw Exception();
   }
  }
}

@riverpod
HomeRepository homeRepo (HomeRepoRef ref) {
  return HomeRepository();
}
