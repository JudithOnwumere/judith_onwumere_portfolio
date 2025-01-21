// ignore_for_file: prefer_final_fields, unused_field, avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';
import 'package:judith_onwumere/pages/works/adqua.dart';
import 'package:judith_onwumere/pages/works/cruel.dart';
import 'package:judith_onwumere/pages/works/petrolad.dart';
import 'package:judith_onwumere/pages/works/rateam.dart';
import 'package:judith_onwumere/styles/adqua/adqua_strings.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';
import 'package:judith_onwumere/styles/app/app_strings.dart';
import 'package:judith_onwumere/styles/app/app_text_styles.dart';
import 'package:judith_onwumere/styles/app/mobile/app_text_styles.dart';
import 'package:judith_onwumere/styles/petrolad/petrol_advisory.dart';
import 'package:judith_onwumere/styles/projects/project_strings.dart';
import 'package:judith_onwumere/styles/quebits/quebits_strings.dart';
import 'package:judith_onwumere/styles/rateam/rateam_strings.dart';
import 'package:judith_onwumere/styles/swiftally/swiftally_strings.dart';
import 'package:judith_onwumere/widgets/app/app_button.dart';
import 'package:judith_onwumere/widgets/app/footer.dart';
import 'package:judith_onwumere/widgets/app/social_links.dart';
import 'package:judith_onwumere/widgets/app/work_section.dart';
import 'package:judith_onwumere/widgets/works/project_items.dart';
import 'dart:js' as js;

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

final sectionKey1 = GlobalKey();
final sectionKey2 = GlobalKey();
final sectionKey3 = GlobalKey();
final sectionKey4 = GlobalKey();
final sectionKey5 = GlobalKey();
final sectionKey6 = GlobalKey();

class _TabletScaffoldState extends State<TabletScaffold> {
  final PageController _pageController = PageController();

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return ColoredBox(
      color: Colors.black87,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppStrings.webBg),
            fit: BoxFit.cover,
            opacity: 0.05,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          // extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            foregroundColor: AppColours.textColour,
            toolbarHeight: 72,
            title: Text(
              AppStrings.appLogo,
              style: AppTextStyles.appLogo,
            ),
            actions: [
              Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  iconSize: 36.0, // Adjust the size here
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                ),
              ),
            ],
          ),
          endDrawer: Drawer(
            width: 400,
            backgroundColor: Colors.black54,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DrawerHeader(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(AppStrings.profileImg),
                              ),
                              shape: BoxShape.circle),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: AppColours.textColour,
                          icon: const Icon(
                            Icons.close,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppSpacing.height16,
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 72),
                  onTap: () {
                    scrollToSection(sectionKey2);
                    Navigator.pop(context);
                  },
                  leading: const Icon(
                    Icons.business_outlined,
                    color: AppColours.textColour,
                  ),
                  title: Text(
                    AppStrings.navLink1,
                    style: MobileAppTextStyles.navLinks,
                  ),
                ),
                AppSpacing.height16,
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 72),
                  onTap: () {
                    scrollToSection(sectionKey3);
                    Navigator.pop(context);
                  },
                  leading: const Icon(
                    Icons.folder_outlined,
                    color: AppColours.textColour,
                  ),
                  title: Text(
                    AppStrings.navLink2,
                    style: MobileAppTextStyles.navLinks,
                  ),
                ),
                AppSpacing.height16,
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 72),
                  leading: const Icon(
                    Icons.lightbulb_outline_rounded,
                    color: AppColours.textColour,
                  ),
                  onTap: () {
                    scrollToSection(sectionKey4);
                    Navigator.pop(context);
                  },
                  title: Text(
                    AppStrings.navLink3,
                    style: MobileAppTextStyles.navLinks,
                  ),
                ),
                AppSpacing.height16,
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 72),
                  leading: const Icon(
                    Icons.person_outline_rounded,
                    color: AppColours.textColour,
                  ),
                  onTap: () {
                    scrollToSection(sectionKey5);
                    Navigator.pop(context);
                  },
                  title: Text(
                    AppStrings.navLink4,
                    style: MobileAppTextStyles.navLinks,
                  ),
                ),
                AppSpacing.height16,
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 72),
                  leading: const Icon(
                    Icons.mail_outline_rounded,
                    color: AppColours.textColour,
                  ),
                  onTap: () {
                    scrollToSection(sectionKey6);
                    Navigator.pop(context);
                  },
                  title: Text(
                    AppStrings.navLink5,
                    style: MobileAppTextStyles.navLinks,
                  ),
                ),
                const Spacer(),
                Text(
                  AppStrings.copyrightText,
                  style: MobileAppTextStyles.bodyText.copyWith(
                    fontSize: 12,
                  ),
                ),
                AppSpacing.height32,
              ],
            ),
          ),
          body: SingleChildScrollView(
            controller: _pageController,
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Hero
                  Container(
                    key: sectionKey1,
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    width: screenWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //  HERO TEXT
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppStrings.heroTitle1,
                              style: AppTextStyles.heroTitleText,
                            ),
                            Text(
                              AppStrings.heroTitle2,
                              style: AppTextStyles.heroTitleText,
                            ),
                            AppSpacing.height16,
                            Text(
                              AppStrings.heroBody,
                              style: AppTextStyles.bodyText,
                            ),
                            AppSpacing.height32,
                            AppButton(
                              btnText: AppStrings.resumeText,
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://drive.google.com/file/d/1AqjVN6mswRDWDzisAHRtiERhoK8WVGVk/view?usp=sharing'
                                ]);
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  AppSpacing.height144,

                  // MY EXPERIENCE
                  Center(
                    key: sectionKey2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.myExperience,
                          style: AppTextStyles.subHeader,
                        ),
                        AppSpacing.height32,
                        Table(
                          border: TableBorder.all(
                              color: AppColours
                                  .textColour), // Add borders to the table cells
                          children: [
                            // HEADER
                            TableRow(
                              children: [
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      AppStrings.expWhere,
                                      style: MobileAppTextStyles.bodyTitleText,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      QuebitsStrings.quebitsName,
                                      style: AppTextStyles.bodyText,
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      SwiftallyStrings.swiftName,
                                      style: AppTextStyles.bodyText,
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            //TEXT
                            TableRow(
                              children: [
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Text(
                                      AppStrings.expAs,
                                      style: AppTextStyles.bodyTitleText,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Text(
                                      QuebitsStrings.quebitsRole,
                                      style: AppTextStyles.bodyText,
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Text(
                                      SwiftallyStrings.swiftRole,
                                      style: AppTextStyles.bodyText,
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Text(
                                      AppStrings.expFrom,
                                      style: AppTextStyles.bodyTitleText,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Text(
                                      QuebitsStrings.quebitsTime,
                                      style: AppTextStyles.bodyText,
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Text(
                                      SwiftallyStrings.swiftTime,
                                      style: AppTextStyles.bodyText,
                                      // textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Text(
                                      AppStrings.expI,
                                      style: AppTextStyles.bodyTitleText,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Text(
                                      QuebitsStrings.quebitsDetail,
                                      style: AppTextStyles.bodyText,
                                    ),
                                  ),
                                ),
                                TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(24),
                                    child: Text(
                                      SwiftallyStrings.swiftDetail,
                                      style: AppTextStyles.bodyText,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  AppSpacing.height144,

                  // MY WORKS
                  Container(
                    key: sectionKey3,
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    width: screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.myWorks,
                          style: AppTextStyles.subHeader,
                        ),
                        AppSpacing.height32,

                        // RATEAM
                        WorkSection(
                          worksTitle: RateamStrings.rateAmTitle,
                          role: AppStrings.role,
                          roleBody: RateamStrings.rateAmRole,
                          timeline: AppStrings.timeline,
                          timelineBody: RateamStrings.rateAmTimeline,
                          industry: AppStrings.industry,
                          industryBody: RateamStrings.rateAmIndustry,
                          imagePath: RateamStrings.rateAmImgPath,
                          titleStyle: AppTextStyles.worksTitleText,
                          subTitleStyle: AppTextStyles.worksSubTitleText,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Rateam(),
                              ),
                            );
                          },
                        ),

                        AppSpacing.height96,

                        // ADQUA
                        WorkSection(
                          worksTitle: AdquaStrings.adquaTitle,
                          role: AppStrings.role,
                          roleBody: AdquaStrings.adquaRole,
                          timeline: AppStrings.timeline,
                          timelineBody: AdquaStrings.adquaTimeline,
                          industry: AppStrings.industry,
                          industryBody: AdquaStrings.adquaIndustry,
                          imagePath: AdquaStrings.adquaImgPath,
                          titleStyle: AppTextStyles.worksTitleText,
                          subTitleStyle: AppTextStyles.worksSubTitleText,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Adqua(),
                              ),
                            );
                          },
                        ),
                        AppSpacing.height96,

                        // CRUEL INTENTIONS
                        WorkSection(
                          worksTitle: QuebitsStrings.cruelTitle,
                          role: AppStrings.role,
                          roleBody: QuebitsStrings.cruelRole,
                          timeline: AppStrings.timeline,
                          timelineBody: QuebitsStrings.cruelTimeline,
                          industry: AppStrings.industry,
                          industryBody: QuebitsStrings.cruekIndustry,
                          imagePath: QuebitsStrings.cruelImgPath,
                          titleStyle: AppTextStyles.worksTitleText,
                          subTitleStyle: AppTextStyles.worksSubTitleText,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Cruel(),
                              ),
                            );
                          },
                        ),

                        AppSpacing.height96,

                        // PETROL ADVISORY
                        WorkSection(
                          worksTitle: PaStrings.paTitle,
                          role: AppStrings.role,
                          roleBody: PaStrings.paRole,
                          timeline: AppStrings.timeline,
                          timelineBody: PaStrings.paTimeline,
                          industry: AppStrings.industry,
                          industryBody: PaStrings.paIndustry,
                          imagePath: PaStrings.paImgPath,
                          titleStyle: AppTextStyles.worksTitleText,
                          subTitleStyle: AppTextStyles.worksSubTitleText,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Petrolad(),
                              ),
                            );
                          },
                        ),
                        // END
                      ],
                    ),
                  ),

                  AppSpacing.height144,

                  // SIDE PROJECTS
                  SizedBox(
                    key: sectionKey4,
                    // padding: const EdgeInsets.symmetric(vertical: 100),
                    width: screenWidth,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppStrings.myProjects,
                          style: AppTextStyles.subHeader,
                        ),
                        AppSpacing.height32,
                        Wrap(
                          spacing: 40.0, // Horizontal spacing between children
                          runSpacing: 100.0, // Vertical spacing between rows
                          alignment: WrapAlignment.center,
                          children: [
                            ProjectItems(
                              imgPath: ProjectStrings.socialIconsImgPath,
                              title: ProjectStrings.socialIconsTitle,
                              text: ProjectStrings.socialIconsText,
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://www.figma.com/community/file/1149894159830066654/3d-social-media-icon-pack'
                                ]);
                              },
                            ),
                            ProjectItems(
                              imgPath: ProjectStrings.whatsappPath,
                              title: ProjectStrings.whatsappTitle,
                              text: ProjectStrings.whatsappText,
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://www.behance.net/gallery/214036511/Whatsapp-Editable-Text-and-Captions-for-Status'
                                ]);
                              },
                            ),
                            ProjectItems(
                              imgPath: ProjectStrings.pencribPath,
                              title: ProjectStrings.pencribTitle,
                              text: ProjectStrings.pencribText,
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://www.behance.net/gallery/165364699/Website-Design'
                                ]);
                              },
                            ),
                            ProjectItems(
                              imgPath: ProjectStrings.briefsImgPath,
                              title: ProjectStrings.briefsTitle,
                              text: ProjectStrings.briefsText,
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://www.behance.net/gallery/149717113/Random-Briefs-Generator-App-UIUX-Case-Study'
                                ]);
                              },
                            ),
                            ProjectItems(
                              imgPath: ProjectStrings.buttonsImgPath,
                              title: ProjectStrings.buttonsTitle,
                              text: ProjectStrings.buttonsText,
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://www.figma.com/community/file/1379922361688322613/button-components-jelly-design-system-v1-0'
                                ]);
                              },
                            ),
                            ProjectItems(
                              imgPath: ProjectStrings.w3sPath,
                              title: ProjectStrings.w3sTitle,
                              text: ProjectStrings.w3sText,
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://www.behance.net/gallery/157861225/W3Schools-Course-Page-Redesign'
                                ]);
                              },
                            ),
                            ProjectItems(
                              imgPath: ProjectStrings.yhackerPath,
                              title: ProjectStrings.yhackerTitle,
                              text: ProjectStrings.yhackerText,
                              onPressed: () {
                                js.context.callMethod('open', [
                                  'https://www.behance.net/gallery/165227545/Y-Hacker-News-Redesign-Case-Study'
                                ]);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  AppSpacing.height144,

                  // ABOUT ME
                  Container(
                    key: sectionKey5,
                    padding: const EdgeInsets.symmetric(vertical: 100),
                    width: screenWidth,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //  HERO TEXT
                        Container(
                          width: screenWidth,
                          height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                                image: AssetImage(AppStrings.profileImg),
                                fit: BoxFit.cover),
                          ),
                        ),
                        AppSpacing.height32,
                        Text(
                          AppStrings.aboutTitle1,
                          style: AppTextStyles.bodyTitleText,
                        ),
                        AppSpacing.height16,
                        Text(
                          AppStrings.aboutTitle2,
                          style: AppTextStyles.bodyTitleText,
                        ),
                        AppSpacing.height32,
                        Text(
                          AppStrings.aboutBody,
                          style: AppTextStyles.bodyText,
                        ),
                      ],
                    ),
                  ),

                  // CONTACT ME
                  Container(
                    key: sectionKey6,
                    padding: const EdgeInsets.only(top: 100, bottom: 20),
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
                              style: AppTextStyles.bodyTitleText,
                            ),
                            AppSpacing.height16,
                            Text(
                              AppStrings.contactTitle2,
                              style: AppTextStyles.bodyTitleText,
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
                              },
                            ),
                            AppSpacing.height32,
                            Text(
                              AppStrings.socialActiveText,
                              style: AppTextStyles.bodyText,
                            ),
                            AppSpacing.height16,
                            const SocialLinks(),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // FOOTER
                  const AppFooter(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
