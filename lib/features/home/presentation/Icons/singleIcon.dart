import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class SingleIcon extends StatelessWidget{
  final IconData icon;
  final String text;
  
  SingleIcon({super.key, required this.icon,required this.text});
  Color color= const Color.fromARGB(255, 171, 166, 166);
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    
    return Container(
     
      height: height/8,
      margin: const EdgeInsets.all(Sizes.p8),
      width: width/4,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(Sizes.p12)
      ),
      child:InkWell(
        onTap: (){
        },
        child: Expanded(child: 
        
            
          Column(children: [
            Icon(icon,size: Sizes.p64,),
            Text(text,style: smallTextL,)
          ],)
        ),
      ),
    );
  }

}