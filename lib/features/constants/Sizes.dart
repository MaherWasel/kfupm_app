import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Sizes {
  static const p4 = 4.0;
  static const p8 = 8.0;
  static const p12 = 12.0;
  static const p16 = 16.0;
  static const p20 = 20.0;
  static const p24 = 24.0;
  static const p32 = 32.0;
  static const p48 = 48.0;
  static const p64 = 64.0;
}

TextStyle textStyle_lato = GoogleFonts.lato();
TextStyle largeTextL = textStyle_lato.copyWith(
  fontSize: Sizes.p32,
  color: const Color.fromARGB(255, 211, 209, 209),
);
TextStyle midTextL = textStyle_lato.copyWith(
  fontSize: Sizes.p24,
  color: const Color.fromARGB(255, 211, 209, 209),
);
TextStyle smallTextL = textStyle_lato.copyWith(
  fontSize: Sizes.p16,
  color: const Color.fromARGB(255, 211, 209, 209),
);
