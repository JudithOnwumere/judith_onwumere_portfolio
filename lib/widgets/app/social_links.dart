// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';
import 'dart:js' as js;

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            js.context
                .callMethod('open', ['https://www.behance.net/onwumerejudith']);
          },
          child: const Icon(
            FontAwesome.behance_brand,
            size: 20,
            color: AppColours.textColour,
          ),
        ),
        AppSpacing.width32,
        InkWell(
          onTap: () {
            js.context
                .callMethod('open', ['https://www.figma.com/@judith_onwumere']);
          },
          child: const Icon(
            FontAwesome.figma_brand,
            size: 20,
            color: AppColours.textColour,
          ),
        ),
        AppSpacing.width32,
        InkWell(
          onTap: () {
            js.context.callMethod('open',
                ['https://www.linkedin.com/in/judith-onwumere-579991241/']);
          },
          child: const Icon(
            FontAwesome.linkedin_brand,
            size: 20,
            color: AppColours.textColour,
          ),
        ),
        AppSpacing.width32,
        InkWell(
          onTap: () {
            js.context.callMethod('open', ['https://tiktok.com/@judhi_xo']);
          },
          child: const Icon(
            FontAwesome.tiktok_brand,
            size: 20,
            color: AppColours.textColour,
          ),
        ),
        AppSpacing.width32,
        InkWell(
          onTap: () {
            js.context.callMethod('open', ['https://x.com/judhi_xo_']);
          },
          child: const Icon(
            FontAwesome.x_twitter_brand,
            size: 20,
            color: AppColours.textColour,
          ),
        ),
      ],
    );
  }
}
