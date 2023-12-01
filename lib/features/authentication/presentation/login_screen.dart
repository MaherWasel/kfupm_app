import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kfupm_app/features/authentication/presentation/form_field_widget.dart';
import 'package:kfupm_app/features/home/presentation/home_screen.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  void _saveData(WidgetRef ref) {
    final isVaild = _formKey.currentState!.validate();
    if (!isVaild) {
      return;
    }
    _formKey.currentState!.save();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    String email = '';
    String password = '';

    final deviceData = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: deviceData.height,
          width: deviceData.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(147, 128, 50, 1),
                Color.fromRGBO(14, 95, 50, 1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: deviceData.height / 5,
                ),
                SizedBox(
                  height: deviceData.height * 0.4,
                  width: deviceData.width,
                  child: Center(
                    child: Stack(alignment: Alignment.center, children: [
                      Image.asset(
                        'assets/KFUPM-Seal.png',
                        opacity: const AlwaysStoppedAnimation(0.15),
                      ),
                      SizedBox(
                        height: deviceData.height * 0.143,
                        child: Image.asset(
                          'assets/logo.png',
                        ),
                      ),
                    ]),
                  ),
                ),

                //Image here
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        width: deviceData.width * 0.8,
                        child: FormFieldWidget(
                          labelText: "email@kfupm.edu.sa",
                          isEmail: true,
                          saveText: (enteredText) {
                            email = enteredText;
                            print(email);
                          },
                        ),
                      ),
                      SizedBox(
                        height: deviceData.height * 0.02,
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
                  height: deviceData.height * 0.02,
                ),
                SizedBox(
                    width: deviceData.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {
                        _saveData(ref);
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (contex) {
                          return const HomeScreen();
                        }));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(208, 183, 86, 0.8),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: Color.fromARGB(255, 244, 241, 241),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
