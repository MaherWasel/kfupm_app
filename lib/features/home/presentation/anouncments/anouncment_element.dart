import 'package:flutter/material.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:kfupm_app/features/home/presentation/anouncments/anounce.dart';
import 'package:page_transition/page_transition.dart';

class AnnouncmentElement extends StatelessWidget {
  const AnnouncmentElement({super.key, required this.imageUrl});  
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    final width=MediaQuery.of(context).size.width;
    final height=MediaQuery.of(context).size.height;
    return Container(
      width: width*3.5/4,
      margin: EdgeInsets.all(Sizes.p12),
      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Sizes.p16),
        child: InkWell(
          onTap: (){
            Navigator.push(context, PageTransition(
              type: PageTransitionType.topToBottom,
              duration: Duration(milliseconds: 500),
              child : Announce(imageUrl: imageUrl)));
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.fill,
            loadingBuilder: (BuildContext context, Widget child,
                          ImageChunkEvent? loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },),
        ),
      ));
   
  }

} 