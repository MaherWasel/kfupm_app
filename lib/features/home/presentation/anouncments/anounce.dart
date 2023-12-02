import 'package:flutter/material.dart';

class Announce extends StatelessWidget{
  final String imageUrl;

  const Announce({required this.imageUrl, super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Image.network(imageUrl,fit: BoxFit.fitHeight,));
  }

}