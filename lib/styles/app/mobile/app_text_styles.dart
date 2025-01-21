import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';

class MobileAppTextStyles {
  MobileAppTextStyles._();
  static final appLogo = GoogleFonts.spaceGrotesk(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AppColours.textColour,
  );
  static final navLinks = GoogleFonts.spaceGrotesk(
    fontSize: 16,
    height: 1.5,
    color: AppColours.textColour,
  );
  static final heroTitleText = GoogleFonts.instrumentSans(
    fontSize: 72,
    fontWeight: FontWeight.bold,
    height: 1.2,
    color: AppColours.textColour,
  );
  static final bodyTitleText = GoogleFonts.instrumentSans(
    fontSize: 36,
    fontWeight: FontWeight.bold,
    height: 1.2,
    color: AppColours.textColour,
  );
  static final bodyText = GoogleFonts.instrumentSans(
    fontSize: 20,
    height: 1.5,
    color: AppColours.textColour,
  );
  static final btnText = GoogleFonts.instrumentSans(
    fontSize: 14,
    height: 1.5,
    fontWeight: FontWeight.w600,
    color: AppColours.textColour,
  );
  static final worksTitleText = GoogleFonts.instrumentSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: AppColours.otherColour.withOpacity(0.9),
  );
  static final worksSubTitleText = GoogleFonts.instrumentSans(
    fontSize: 14,
    height: 1.5,
    color: AppColours.otherColour.withOpacity(0.6),
  );
  static final projectsTitleText = GoogleFonts.instrumentSans(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 1.5,
    color: AppColours.textColour.withOpacity(0.9),
  );
  static final projectsSubTitleText = GoogleFonts.instrumentSans(
    fontSize: 14,
    height: 1.5,
    color: AppColours.textColour.withOpacity(0.5),
  );
}
