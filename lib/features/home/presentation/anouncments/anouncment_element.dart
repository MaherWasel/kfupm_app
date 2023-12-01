import 'package:flutter/material.dart';

class AnnouncmentElement extends StatelessWidget{
  const AnnouncmentElement({super.key, required this.imageUrl});  
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    return Container(
      width: width/2,
      child: Image.network(imageUrl),
    );
  }

} 