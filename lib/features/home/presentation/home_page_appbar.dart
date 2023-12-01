import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget{
  const HomePageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        
        margin: const EdgeInsets.all(Sizes.p8),
        child: Row(
          children: [
            IconButton(
              onPressed: (){}, icon: const Icon(
                Icons.calendar_month,
                size: Sizes.p32,
              )),
             Expanded(
              child: Column(
                children: [
                  Text("WELCOME",style: midTextL.copyWith(
                    fontWeight: FontWeight.bold
                  ),),
                  Text("Ahmed Khalid ",style: smallTextL,),
                ],
              ),
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.person,
                size: Sizes.p32,))
          ],
        ),
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}