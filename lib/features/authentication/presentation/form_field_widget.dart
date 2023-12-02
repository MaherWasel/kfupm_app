import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kfupm_app/features/constants/Sizes.dart';

class FormFieldWidget extends StatelessWidget {
  FormFieldWidget({
    super.key,
    required this.labelText,
    required this.isEmail,
    required this.saveText,
  });
  final void Function(String enterdText) saveText;
  final String labelText;
  final bool isEmail;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(255, 147, 147, 147),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          labelText: labelText,
          labelStyle: smallTextL),
      style: GoogleFonts.lato(
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
      onSaved: (newValue) {
        saveText(newValue!);
      },
      textCapitalization: TextCapitalization.none,
      autocorrect: false,
      obscureText: isEmail ? false : true,
    );
  }
}