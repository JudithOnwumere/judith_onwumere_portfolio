import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';

class AppTextStyles {
  AppTextStyles._();
  static final appLogo = GoogleFonts.spaceGrotesk(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColours.textColour,
  );
  static final navLinks = GoogleFonts.spaceGrotesk(
    fontSize: 16,
    height: 1.5,
    color: AppColours.textColour,
  );

  static final subHeader = GoogleFonts.spaceGrotesk(
    fontSize: 16,
    letterSpacing: 5,
    height: 1.5,
    color: AppColours.textColour.withOpacity(0.8),
  );

  static final heroTitleText = GoogleFonts.spaceGrotesk(
    fontSize: 96,
    fontWeight: FontWeight.bold,
    height: 1.0,
    color: AppColours.textColour,
  );
  static final bodyTitleText = GoogleFonts.spaceGrotesk(
    fontSize: 48,
    fontWeight: FontWeight.bold,
    height: 1.0,
    color: AppColours.textColour,
  );
  static final bodyText = GoogleFonts.spaceGrotesk(
    fontSize: 16,
    height: 1.7,
    color: AppColours.textColour,
  );

  static final btnText = GoogleFonts.spaceGrotesk(
    fontSize: 16,
    height: 1.5,
    fontWeight: FontWeight.w600,
    color: AppColours.textColour,
  );
  static final worksTitleText = GoogleFonts.spaceGrotesk(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: AppColours.textColour,
  );
  static final worksSubTitleText = GoogleFonts.spaceGrotesk(
    fontSize: 16,
    height: 1.5,
    color: AppColours.textColour.withOpacity(0.8),
  );
  static final projectsTitleText = GoogleFonts.spaceGrotesk(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: AppColours.textColour.withOpacity(0.9),
  );
  static final projectsSubTitleText = GoogleFonts.spaceGrotesk(
    fontSize: 14,
    height: 1.5,
    color: AppColours.textColour.withOpacity(0.5),
  );
}
