import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/home/data/homeRepo.dart';
import 'package:kfupm_app/features/home/presentation/anouncments/anouncment_element.dart';

class Announcments extends ConsumerWidget{
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return StreamBuilder(
      stream: ref.read(homeRepoProvider).getAnouncments(), 
      builder:(context,snapshots){
        if (snapshots.connectionState==ConnectionState.waiting){
          return const CircularProgressIndicator();
        }
        if (snapshots.hasData){
          final  data=snapshots.data!;
          final imageUrls=data["images"];
          print(imageUrls);
          return ListView.builder(
            itemCount: 3,
            itemBuilder: (context,index){
              return AnnouncmentElement(imageUrl: imageUrls[index]);
            });
          

        }
        else {
          return Text("error");
        }
      });
  }

}