import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kfupm_app/features/authentication/presentation/login_screen.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';
import 'package:page_transition/page_transition.dart';

class StartingAppScreen extends StatefulWidget {
  const StartingAppScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StartingAppScreenState();
  }
}

class _StartingAppScreenState extends State<StartingAppScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late CurvedAnimation _iconAnimation;
  late CurvedAnimation _textAnimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1850));
    _iconAnimation = CurvedAnimation(
        parent: _controller, curve: Curves.fastEaseInToSlowEaseOut);
    _textAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut);
  }

  void startAnimation() async {
    await _controller.forward();
    await _controller.reverse();
    Navigator.pushReplacement(
        context,
        PageTransition(
            type: PageTransitionType.leftToRight,
            duration: const Duration(milliseconds: 550),
            child: LoginScreen()));
  }
  @override
  void dispose(){
    super.dispose();
    _iconAnimation.dispose();
    _textAnimation.dispose();
  }

  @override
  Widget build(BuildContext context) {
    startAnimation();
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
              Color.fromARGB(255, 17, 51, 18),
              Color.fromARGB(255, 9, 92, 12)
            ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _iconAnimation,
              child: SizedBox(
                  height: 220,
                  width: 220,
                  child: Image.asset("assets/logo.png")),
            ),
            const SizedBox(
              height: 25,
            ),
            ScaleTransition(
                scale: _textAnimation,
                child: Center(
                  child: Text(
                    "WE DREAM AND ACCOMPLISH",
                    overflow: TextOverflow.clip,
                    style: midTextL.copyWith(
                      color: Colors.white
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
