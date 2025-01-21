import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';

class ProjectTextstyles {
  ProjectTextstyles._();

  static final projectTitle = GoogleFonts.instrumentSans(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    height: 1.5,
    color: AppColours.textColour,
  );
  static final projectText = GoogleFonts.instrumentSans(
    fontSize: 16,
    height: 1.7,
    color: AppColours.textColour,
  );
}
