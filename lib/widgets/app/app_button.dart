// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:judith_onwumere/styles/app/app_colours.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';
import 'package:judith_onwumere/styles/app/app_text_styles.dart';

class AppButton extends StatelessWidget {
  final String btnText;
  final IconData? btnIcon;
  final VoidCallback onPressed;

  const AppButton({
    super.key,
    required this.btnText,
    this.btnIcon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return IconButton(
          onPressed: onPressed,
          padding:
              const EdgeInsets.only(left: 10, top: 12, right: 30, bottom: 12),
          style: IconButton.styleFrom(
              backgroundColor: AppColours.textColour.withOpacity(0.25),
              hoverColor: AppColours.textColour.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: AppColours.textColour, width: 1),
              )),
          icon: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                btnIcon,
                color: AppColours.textColour,
              ),
              AppSpacing.width16,
              Text(
                btnText,
                style: AppTextStyles.bodyText
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      } else {
        return SizedBox(
          width: 300,
          child: IconButton(
            onPressed: onPressed,
            padding:
                const EdgeInsets.only(left: 10, top: 8, right: 30, bottom: 8),
            style: IconButton.styleFrom(
                backgroundColor: AppColours.textColour.withOpacity(0.25),
                hoverColor: AppColours.textColour.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side:
                      const BorderSide(color: AppColours.textColour, width: 1),
                )),
            icon: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  btnIcon,
                  color: AppColours.textColour,
                ),
                AppSpacing.width16,
                Text(
                  btnText,
                  style: AppTextStyles.bodyText
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}
