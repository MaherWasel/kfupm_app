import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/home/data/homeRepo.dart';
import 'package:kfupm_app/features/home/presentation/anouncments/anouncment_element.dart';

class Announcments extends ConsumerWidget{
  bool pos=false;
  final listViewController = ScrollController();
  @override
  Widget build(BuildContext context,WidgetRef ref)  {
    
    return StreamBuilder(
      stream: ref.read(homeRepoProvider).getAnouncments(), 
      builder: (context,snapshot){
        if (snapshot.connectionState==ConnectionState.waiting){
          return Center(child: CircularProgressIndicator());
        }
         if (snapshot.hasData){
          
          final data=snapshot.data!["images"];
          print(data);
          return Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              addAutomaticKeepAlives: true,
              controller: listViewController,
              itemCount: data.length,
              
              itemBuilder: (context,index){
                
                return AnnouncmentElement(imageUrl: data[data.length-1-index]);
              }),
          );
          
          
        }
       
       

          return Text("alo");
        
      })
;  }

}