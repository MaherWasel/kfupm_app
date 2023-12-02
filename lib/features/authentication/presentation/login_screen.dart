import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/authentication/data/user.dart';
import 'package:kfupm_app/features/authentication/presentation/form_field_widget.dart';
import 'package:kfupm_app/features/home/presentation/home_screen.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  void _saveData(WidgetRef ref, BuildContext context) async {
    final isVaild = _formKey.currentState!.validate();
    if (!isVaild) {
      return;
    }
    _formKey.currentState!.save();

    try {
      ref.read(userRepoProvider).login(email: email, password: password);
    } on FirebaseAuthException catch (error) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.message ?? "Authentication Failed")));
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceData = MediaQuery.of(context).size;
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomeScreen();
          }
          return Scaffold(
            body: SingleChildScrollView(
              child: Container(
                height: deviceData.height,
                width: deviceData.width,
                color: Color(0xff0B4928),
                child: Center(
                  child: ListView(
                    children: [
                      SizedBox(
                        height: deviceData.height * 0.4,
                        width: deviceData.width,
                        child: Center(
                          child: Stack(alignment: Alignment.center, children: [
                            Image.asset(
                              'assets/KFUPM-Seal.png',
                              opacity: const AlwaysStoppedAnimation(0.15),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: deviceData.height * 0.143,
                                  child: Image.asset(
                                    'assets/logo.png',
                                  ),
                                ),
                                Text(
                                  "WELCOME TO KFUPM STUDENT APP",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text("Please log in using portal information",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15)),
                              ],
                            ),
                          ]),
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(35),
                                  topRight: Radius.circular(35))),
                          width: deviceData.width,
                          height: deviceData.height,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Column(
                              children: [
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: deviceData.height * 0.05,
                                      ),
                                      SizedBox(
                                        width: deviceData.width * 0.8,
                                        child: FormFieldWidget(
                                          labelText: "ID / Email",
                                          isEmail: true,
                                          saveText: (enteredText) {
                                            email = enteredText;
                                            print(email);
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: deviceData.height * 0.03,
                                      ),
                                      SizedBox(
                                        width: deviceData.width * 0.8,
                                        child: FormFieldWidget(
                                          labelText: "password",
                                          isEmail: false,
                                          saveText: (enteredText) {
                                            password = enteredText;
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: deviceData.height * 0.1,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    _saveData(ref, context);
                                  },
                                  child: Container(
                                    width: deviceData.width * 0.35,
                                    height: deviceData.height * 0.06,
                                    child: Center(
                                        child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    )),
                                    decoration: BoxDecoration(
                                        color: Color(0xff0B4928),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(35),
                                            topRight: Radius.circular(7),
                                            bottomLeft: Radius.circular(7),
                                            bottomRight: Radius.circular(35))),
                                  ),
                                ),
                              ],
                            ),
                          )
                          //Image here
                          )
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}