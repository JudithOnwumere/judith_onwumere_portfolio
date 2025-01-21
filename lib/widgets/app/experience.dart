import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';

class Experience extends StatelessWidget {
  final String titleText1;
  final String titleText2;
  final String bodyText;
  final String date;
  final TextStyle titleStyle;
  final TextStyle bodyStyle;
  const Experience(
      {super.key,
      required this.titleText1,
      required this.titleText2,
      required this.bodyText,
      required this.date,
      required this.titleStyle,
      required this.bodyStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText1,
          style: titleStyle,
        ),
        Text(
          titleText2,
          style: titleStyle,
        ),
        AppSpacing.height16,
        SizedBox(
          width: 704,
          child: Text(
            bodyText,
            style: bodyStyle,
          ),
        ),
        AppSpacing.height16,
        Text(date,
            style: bodyStyle.copyWith(
              fontSize: 14,
              color: AppColours.textColour.withOpacity(0.7),
            )),
      ],
    );
  }
}
