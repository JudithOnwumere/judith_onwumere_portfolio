import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';
import 'package:judith_onwumere/styles/app/app_strings.dart';
import 'package:judith_onwumere/styles/app/app_text_styles.dart';
import 'package:judith_onwumere/styles/app/mobile/app_text_styles.dart';
import 'package:judith_onwumere/widgets/app/app_button.dart';
import 'package:judith_onwumere/widgets/works/works_appbar.dart';
import 'package:judith_onwumere/widgets/works/works_headers.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

class WorksPage extends StatelessWidget {
  final String title;
  final String introduction;
  final String? scope;
  final String? challenges;
  final String? designSolution;
  final String? keyResearch;
  final String impact;
  final String reflection;
  final String coverImgPath;
  final String imgPath1;
  final String imgPath2;
  const WorksPage(
      {super.key,
      required this.title,
      required this.introduction,
      this.scope,
      this.challenges,
      this.designSolution,
      this.keyResearch,
      required this.impact,
      required this.reflection,
      required this.coverImgPath,
      required this.imgPath1,
      required this.imgPath2});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return Scaffold(
          backgroundColor: Colors.black87,
          appBar: const WorksAppbar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          title,
                          style: AppTextStyles.worksTitleText
                              .copyWith(fontSize: 20),
                        ),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Introduction',
                        subTitle: introduction,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(coverImgPath),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Scope of Work',
                        subTitle: scope!,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(imgPath1),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Challenges',
                        subTitle: challenges!,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Design Solution',
                        subTitle: designSolution!,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(imgPath2),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Key Research Metrics',
                        subTitle: keyResearch!,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Impact',
                        subTitle: impact,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Reflection',
                        subTitle: reflection,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  AppSpacing.height144,
                  Container(
                    padding: const EdgeInsets.only(top: 50, bottom: 100),
                    width: screenWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //  HERO TEXT
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.contactTitle1,
                              style: MobileAppTextStyles.bodyTitleText,
                            ),
                            Text(
                              AppStrings.contactTitle2,
                              style: MobileAppTextStyles.bodyTitleText,
                            ),
                            AppSpacing.height16,
                            Text(
                              AppStrings.contactBody,
                              style: AppTextStyles.bodyText,
                            ),
                            AppSpacing.height32,
                            AppButton(
                                btnText: AppStrings.contactBtnText,
                                btnIcon: Icons.mail,
                                onPressed: () {
                                  js.context.callMethod('open',
                                      ['mailto:onwumerejudith@gmail.com']);
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      } else {
        return Scaffold(
          backgroundColor: Colors.black87,
          appBar: const WorksAppbar(),
          body: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 150, vertical: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(
                          title,
                          style: AppTextStyles.worksTitleText
                              .copyWith(fontSize: 20)
                              .copyWith(fontSize: 32),
                        ),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Introduction',
                        subTitle: introduction,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(coverImgPath),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Scope of Work',
                        subTitle: scope!,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(imgPath1),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Challenges',
                        subTitle: challenges!,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Design Solution',
                        subTitle: designSolution!,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(imgPath2),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Key Research Metrics',
                        subTitle: keyResearch!,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Impact',
                        subTitle: impact,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                      AppSpacing.height64,
                      WorksHeader(
                        title: 'Reflection',
                        subTitle: reflection,
                        titleStyle: AppTextStyles.worksSubTitleText,
                        subTitleStyle:
                            AppTextStyles.worksTitleText.copyWith(fontSize: 20),
                      ),
                    ],
                  ),
                  AppSpacing.height144,
                  Container(
                    padding: const EdgeInsets.only(top: 100, bottom: 20),
                    width: screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //  HERO TEXT
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.contactTitle1,
                              style: AppTextStyles.bodyTitleText,
                            ),
                            Text(
                              AppStrings.contactTitle2,
                              style: AppTextStyles.bodyTitleText,
                            ),
                            AppSpacing.height16,
                            SizedBox(
                              width: 434,
                              child: Text(
                                AppStrings.contactBody,
                                style: AppTextStyles.bodyText,
                              ),
                            ),
                            AppSpacing.height32,
                            AppButton(
                                btnText: AppStrings.contactBtnText,
                                btnIcon: Icons.mail,
                                onPressed: () {
                                  js.context.callMethod('open',
                                      ['mailto:onwumerejudith@gmail.com']);
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    });
  }
}
