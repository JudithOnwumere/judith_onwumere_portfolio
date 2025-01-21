import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';
import 'package:judith_onwumere/styles/app/app_strings.dart';
import 'package:judith_onwumere/widgets/app/app_button.dart';
import 'package:judith_onwumere/widgets/works/works_headers.dart';

class WorkSection extends StatelessWidget {
  final String worksTitle;
  final String role;
  final String roleBody;
  final String timeline;
  final String timelineBody;
  final String industry;
  final String industryBody;
  final String imagePath;
  final TextStyle titleStyle;
  final TextStyle subTitleStyle;
  final VoidCallback onTap;

  const WorkSection(
      {super.key,
      required this.worksTitle,
      required this.role,
      required this.roleBody,
      required this.timeline,
      required this.timelineBody,
      required this.industry,
      required this.industryBody,
      required this.imagePath,
      required this.titleStyle,
      required this.subTitleStyle,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return InkWell(
          onTap: onTap,
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    worksTitle,
                    style: titleStyle,
                  ),
                  AppSpacing.height16,
                  WorksHeader(
                      title: role,
                      subTitle: roleBody,
                      titleStyle: subTitleStyle,
                      subTitleStyle: titleStyle),
                  AppSpacing.height16,
                  WorksHeader(
                    title: timeline,
                    subTitle: timelineBody,
                    titleStyle: subTitleStyle,
                    subTitleStyle: titleStyle,
                  ),
                  AppSpacing.height16,
                  WorksHeader(
                    title: industry,
                    subTitle: industryBody,
                    titleStyle: subTitleStyle,
                    subTitleStyle: titleStyle,
                  )
                ],
              ),
              AppSpacing.height32,
              Container(
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(imagePath),
              ),
              AppSpacing.height32,
              AppButton(btnText: AppStrings.readBtn, onPressed: onTap),
            ],
          ),
        );
      } else {
        return InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 48),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 400,
                      child: Text(
                        worksTitle,
                        style: titleStyle,
                      ),
                    ),
                    WorksHeader(
                        title: role,
                        subTitle: roleBody,
                        titleStyle: subTitleStyle,
                        subTitleStyle: titleStyle),
                    WorksHeader(
                      title: timeline,
                      subTitle: timelineBody,
                      titleStyle: subTitleStyle,
                      subTitleStyle: titleStyle,
                    ),
                    WorksHeader(
                      title: industry,
                      subTitle: industryBody,
                      titleStyle: subTitleStyle,
                      subTitleStyle: titleStyle,
                    )
                  ],
                ),
                AppSpacing.height64,
                Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  // width: MediaQuery.of(context).size.width / 1.5,
                  // height: MediaQuery.of(context).size.height / 2,
                  child: Image.asset(imagePath),
                ),
                AppSpacing.height64,
                AppButton(btnText: AppStrings.readBtn, onPressed: onTap),
              ],
            ),
          ),
        );
      }
    });
  }
}
