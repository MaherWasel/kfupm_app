import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  const FormFieldWidget({
    super.key,
    required this.labelText,
    required this.isEmail,
  });

  final String labelText;
  final bool isEmail;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromRGBO(19, 128, 65, 1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 244, 241, 241),
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      style: const TextStyle(
        color: Color.fromARGB(255, 244, 241, 241),
        fontSize: 16,
      ),
      validator: isEmail
          ? (email) {
              if (email == null ||
                  email.trim().isEmpty ||
                  !email.contains("@")) {
                return "Please Enter a vaild emil adderss.";
              }
              return null;
            }
          : (password) {
              if (password == null ||
                  password.isEmpty ||
                  password.trim().length < 8) {
                return "Please enter a valid password";
              } else {
                return null;
              }
            },
      textCapitalization: TextCapitalization.none,
      autocorrect: false,
    );
  }
}
