import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class SingleIcon extends StatelessWidget{
  final IconData icon;
  final String text;
  final bool isActive;
  final Function onPress;
  SingleIcon({required this.onPress, super.key, required this.icon,required this.text ,required this.isActive});

  Color color= Color.fromARGB(157, 171, 166, 166);

  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    
    return Container(
     
      height: height/8,
      margin: const EdgeInsets.all(Sizes.p8),
      width: width/4,
      decoration: BoxDecoration(
        color: isActive?Color.fromARGB(177, 0, 0, 0):color,
        
        borderRadius: BorderRadius.circular(Sizes.p12,),
        border: Border.all(
          color: Colors.black,)
      ),
      child:InkWell(
        onTap: ()=>onPress(text),
        child: Expanded(child: 
        
            
          Column(children: [
            Icon(icon,size: Sizes.p64,color: Colors.white,),
            Text(text,style: smallTextL.copyWith(color: Colors.white),)
          ],)
        ),
      ),
    );
  }
}