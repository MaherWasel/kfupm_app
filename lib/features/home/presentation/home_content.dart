import 'package:flutter/widgets.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:kfupm_app/features/home/presentation/Icons/iconWidgets.dart';
import 'package:kfupm_app/features/home/presentation/anouncments/anouncments.dart';
import 'package:kfupm_app/features/home/presentation/home_page_appbar.dart';

class HomeContent extends StatelessWidget{
  // the widget that  merge the sub components of homePage
  const HomeContent({super.key});
 
  @override
  Widget build(BuildContext context) {

    final devicesSizes=MediaQuery.of(context).size;
    return Container(
        height: devicesSizes.height,
        width: devicesSizes.width,
        color:const Color.fromRGBO(3, 84, 38, 1),

        child: ListView(
        children: [
          HomePageAppBar(),
          const SizedBox(
            height: Sizes.p8,
          ),
          SizedBox(
            height: devicesSizes.height*1/4,
            child: Announcments()),
          const SizedBox(
            height: Sizes.p8,
          ),
          IconWidget()
        ],
      ));
  }
}