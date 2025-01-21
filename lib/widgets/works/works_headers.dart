import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';

class WorksHeader extends StatelessWidget {
  final String title;
  final String subTitle;
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;
  const WorksHeader(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.titleStyle,
      required this.subTitleStyle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle,
        ),
        AppSpacing.height8,
        Text(
          subTitle,
          style: subTitleStyle,
        ),
      ],
    );
  }
}
