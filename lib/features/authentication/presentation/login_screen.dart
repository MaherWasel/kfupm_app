import 'package:flutter/material.dart';
import 'package:kfupm_app/features/authentication/presentation/form_field_widget.dart';
import 'package:kfupm_app/features/home/presentation/home_screen.dart';
import 'package:kfupm_app/features/attendance/attendance_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final deviceData = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: deviceData.height,
        width: deviceData.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(208, 183, 86, 1),
              Color.fromRGBO(19, 128, 65, 1),
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
              //Image here
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      width: deviceData.width * 0.8,
                      child: const FormFieldWidget(
                        labelText: "email@kfupm.edu.sa",
                        isEmail: true,
                      ),
                    ),
                    SizedBox(
                      height: deviceData.height * 0.02,
                    ),
                    SizedBox(
                      width: deviceData.width * 0.8,
                      child: const FormFieldWidget(
                        labelText: "password",
                        isEmail: false,
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
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (contex) {
                        return const AttendanceScreen();
                      }));
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromRGBO(19, 128, 65, 1),
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
    );
  }
}
