import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class IdComponent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final deviceSizes = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 58, 3)
,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("students").doc(FirebaseAuth.instance.currentUser!.uid).snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState==ConnectionState.waiting){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final data=snapshot.data;
          return Container(
            width: double.infinity,
            color: const Color.fromARGB(255, 223, 223, 223),
            child: Column(
            
              children: [
                Container(
                  height: deviceSizes.height/3,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 1, 58, 3),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35)),),
                  child: Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text(data!["name"].toString().toUpperCase(),
                      style: largeTextL,),
                      Text(data!["id"].toString(),
                      style: largeTextL,)
                      
                    ],)),
                    
                    
                    
                 
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.p16),
                    color: Colors.white,
          
                  ),
                  margin: const EdgeInsets.all(Sizes.p16),
                  padding: const EdgeInsets.all(Sizes.p16),
                  child: Expanded(
                    child: Column(
                      children: [
                        Text("College : "+ data["collage"],
                        style: midTextL.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        ),),
                        SizedBox(height: Sizes.p12,),
                        Text("Advisor : "+"Dr "+ data["advisor"],
                        style: midTextL.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        )),
                        SizedBox(height: Sizes.p12,),
                        Text("level : "+ data["level"],
                        style: midTextL.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        )),
                        SizedBox(height: Sizes.p12,),
                        Text("Major : "+ data["major"],
                        style: midTextL.copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w500
                        )),


                        
                      ],
                    )),
                )
              ],
            ),
          );
        }
      ),
    );
  }

}