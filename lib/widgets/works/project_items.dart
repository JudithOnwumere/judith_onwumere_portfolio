// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';
import 'package:judith_onwumere/styles/projects/project_strings.dart';
import 'package:judith_onwumere/styles/projects/project_textstyles.dart';
import 'package:judith_onwumere/widgets/app/app_button.dart';

class ProjectItems extends StatelessWidget {
  final String imgPath;
  final String title;
  final String text;
  final VoidCallback onPressed;
  const ProjectItems({
    super.key,
    required this.imgPath,
    required this.title,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
              ),
            ),
            AppSpacing.height16,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: ProjectTextstyles.projectTitle.copyWith(fontSize: 24),
                ),
                AppSpacing.height16,
                Text(
                  text,
                  style: ProjectTextstyles.projectText,
                ),
                AppSpacing.height32,
                AppButton(btnText: ProjectStrings.readBtn, onPressed: onPressed)
              ],
            ),
          ],
        );
      } else {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 450,
              height: 300,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset(
                imgPath,
                fit: BoxFit.cover,
              ),
            ),
            AppSpacing.width64,
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: ProjectTextstyles.projectTitle,
                  ),
                  AppSpacing.height16,
                  Text(
                    text,
                    style: ProjectTextstyles.projectText,
                  ),
                  AppSpacing.height32,
                  AppButton(
                      btnText: ProjectStrings.readBtn, onPressed: onPressed)
                ],
              ),
            ),
          ],
        );
      }
    });
  }
}
