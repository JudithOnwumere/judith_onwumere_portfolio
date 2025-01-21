// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';
import 'package:judith_onwumere/styles/app/app_strings.dart';
import 'package:judith_onwumere/styles/app/app_text_styles.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 25),
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                AppStrings.copyrightText,
                style: AppTextStyles.bodyText.copyWith(
                  fontSize: 14,
                  color: AppColours.textColour,
                ),
              ),
            ),
          );
        } else {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 50),
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                AppStrings.copyrightText,
                style: AppTextStyles.bodyText.copyWith(
                  fontSize: 14,
                  color: AppColours.textColour,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
