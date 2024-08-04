import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppText {
  // normal text
  static final TextStyle normalText = GoogleFonts.irishGrover(
    color: Colors.white,
    fontSize: 16,
  );

  // button text
  static final TextStyle btnText = GoogleFonts.irishGrover(
    color: const Color(0xFF664CB6),
    fontSize: 38,
  );

  // title text
  static final TextStyle titleText = GoogleFonts.irishGrover(
    color: Colors.white,
    fontSize: 42,
  );
}
