import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class ColElement extends StatelessWidget{
  final IconData icon;
  final String text;
  const ColElement({super.key, required this.icon,required this.text});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final height = MediaQuery.of(context).size.height;
    return Container(

      margin: const EdgeInsets.all(Sizes.p8),
      padding: const EdgeInsets.all(Sizes.p12),
      decoration: BoxDecoration(
        boxShadow: [const BoxShadow(
          blurRadius: 7 ,
          offset: Offset(-4, 4)),
        ],
        borderRadius: const BorderRadius.only
        (topLeft: Radius.circular(35),
        bottomRight: Radius.circular(35),
        topRight: Radius.circular(7),
        bottomLeft: Radius.circular(7)),
        color:  const Color.fromRGBO(29, 100, 60, 1),
        border: Border.all(color: const Color.fromARGB(168, 255, 255, 255))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height/11,
            width: Sizes.p64,
            
            child: Icon(icon,color: Colors.white,
            size: Sizes.p48,),
          ),
          Text(text.toUpperCase(),style: midTextL.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis),),
          const SizedBox(
            width: Sizes.p12,
          )
        ],
      ),
    );
  }

}