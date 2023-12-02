import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/authentication/data/user.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:kfupm_app/features/home/presentation/Icons/columns/Col_element.dart';
import 'package:kfupm_app/features/home/presentation/Icons/services/housing_contract.dart';
import 'package:kfupm_app/features/home/presentation/services/id_component.dart';
import 'package:page_transition/page_transition.dart';

class ExtraServices extends ConsumerWidget{
  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final deviceSizes = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 16, 78, 18),
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
      
            Container(
              padding: const EdgeInsets.symmetric(vertical :Sizes.p32),
              height: deviceSizes.height/4,
              child: Center(child: Text("Extra Services",style: largeTextL
              .copyWith(color: Colors.white,
              fontWeight: FontWeight.bold),))),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35)
                  )
                ),
                child: ListView(
                  children:  [
                    InkWell(
                      onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>IdComponent())),
                      child: const ColElement(icon: Icons.credit_card, text: "Show ID")),
                    const ColElement(icon: Icons.phone, text: "Kfupm Numbers"),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HousingContract()));
                      },
                      child: const ColElement(icon: Icons.home, text: "Housing Contract")),
                    const ColElement(icon: Icons.car_rental_outlined, text: "Vehicle Sticker"),
                    const ColElement(icon: Icons.fact_check, text: "Doctors Evaluation"),
                    InkWell(
                      onTap: (){
                          ref.read(userRepoProvider).signOut();
                      },
                      child: const ColElement(icon: Icons.logout, text: "LogOut"))

                    ],
                ),
              ))
          ],
        ),
      ),
    );
  }

}