// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:judith_onwumere/styles/app/app_colours.dart';
// import 'package:judith_onwumere/styles/app/app_strings.dart';
// import 'package:judith_onwumere/styles/app/app_text_styles.dart';
// import 'package:judith_onwumere/styles/app/app_spacing.dart';
// import 'package:judith_onwumere/styles/projects/project_strings.dart';
// import 'package:judith_onwumere/styles/projects/project_textstyles.dart';
// import 'package:judith_onwumere/styles/rateam/rateam_strings.dart';
// import 'package:judith_onwumere/widgets/app/custom_bouncing_scroll_physics.dart';
// import 'package:judith_onwumere/widgets/app/experience.dart';
// import 'package:judith_onwumere/widgets/app/footer.dart';
// import 'package:judith_onwumere/widgets/app/hover_link_two.dart';
// import 'package:judith_onwumere/widgets/app/nav_bar.dart';
// import 'package:judith_onwumere/widgets/app/cursor.dart';
// import 'package:judith_onwumere/widgets/works/works_headers.dart';
// // ignore: avoid_web_libraries_in_flutter
// import 'dart:js' as js;

// import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// class HeroPage extends StatefulWidget {
//   const HeroPage({super.key});

//   @override
//   State<HeroPage> createState() => _HeroPageState();
// }

// class _HeroPageState extends State<HeroPage> {
//   final PageController _pageController = PageController();
//   int _currentIndex = 0;
//   final CarouselSliderController _carouselController =
//       CarouselSliderController();

//   void scrollToSection(int index) {
//     _pageController.animateToPage(
//       index,
//       duration: const Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//     );
//   }


//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     double screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//         body: Stack(
//       children: [
//         PageView(
//           controller: _pageController,
//           onPageChanged: (index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           physics: const CustomBouncingScrollPhysics(
//             frictFactor: 0.7, // Adjust friction for a smooth stop
//             springFactor: 1.5, // Adjust spring for a more intense bounce
//           ),
//           scrollDirection: Axis.vertical,
//           children: [
//             // HERO SECTION
//             ConstrainedBox(
//               constraints: BoxConstraints(maxHeight: screenHeight),
//               child: Container(
//                 margin: const EdgeInsets.all(14),
//                 padding: const EdgeInsets.all(24),
//                 width: screenWidth,
//                 decoration: BoxDecoration(
//                   color: AppColours.mainColour,
//                   borderRadius: BorderRadius.circular(32),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     //  HERO TEXT
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           AppStrings.heroTitle1,
//                           style: AppTextStyles.heroTitleText,
//                         ),
//                         Text(
//                           AppStrings.heroTitle2,
//                           style: AppTextStyles.heroTitleText,
//                         ),
//                         AppSpacing.height16,
//                         SizedBox(
//                           width: 434,
//                           child: Text(
//                             AppStrings.heroBody,
//                             style: AppTextStyles.bodyText,
//                           ),
//                         ),
//                         AppSpacing.height16,
//                         HoverLinkTwo(
//                           text: AppStrings.resumeText,
//                           onTap: () {
//                             js.context.callMethod('open', [
//                               'https://drive.google.com/file/d/1AqjVN6mswRDWDzisAHRtiERhoK8WVGVk/view?usp=sharing'
//                             ]);
//                           },
//                           currentIndex: _currentIndex,
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // MY EXPERIENCE
//             ConstrainedBox(
//               constraints: BoxConstraints(maxHeight: screenHeight),
//               child: Container(
//                 margin: const EdgeInsets.all(14),
//                 padding: const EdgeInsets.all(24),
//                 width: screenWidth,
//                 height: screenHeight,
//                 decoration: BoxDecoration(
//                   color: AppColours.otherColour,
//                   borderRadius: BorderRadius.circular(32),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     CarouselSlider(
//                       carouselController: _carouselController,
//                       items:  [
//                         Experience(
//                           titleText1: AppStrings.expTitle1a,
//                           titleText2: AppStrings.expTitle2a,
//                           bodyText: AppStrings.expBodya,
//                           date: AppStrings.expDatea,
//                           titleStyle: AppTextStyles.bodyTitleText, bodyStyle: AppTextStyles.bodyText,
//                         ),
//                         Experience(
//                           titleText1: AppStrings.expTitle1b,
//                           titleText2: AppStrings.expTitle2b,
//                           bodyText: AppStrings.expBodyb,
//                           date: AppStrings.expDateb,
//                           titleStyle: AppTextStyles.bodyTitleText, bodyStyle: AppTextStyles.bodyText,
//                         ),
//                         Experience(
//                           titleText1: AppStrings.expTitle1c,
//                           titleText2: AppStrings.expTitle2c,
//                           bodyText: AppStrings.expBodyc,
//                           date: AppStrings.expDatec,
//                           titleStyle: AppTextStyles.bodyTitleText, bodyStyle: AppTextStyles.bodyText,
//                         ),
//                       ],
//                       //Slider Container properties
//                       options: CarouselOptions(
//                         height: screenHeight / 2,
//                         aspectRatio: 16 / 9,
//                         autoPlay: true,
//                         autoPlayCurve: Curves.slowMiddle,
//                         autoPlayInterval: const Duration(seconds: 3),
//                         autoPlayAnimationDuration:
//                             const Duration(milliseconds: 500),
//                         enableInfiniteScroll: true,
//                         viewportFraction: 1,
//                         disableCenter: false,
//                       ),
//                     ),

//                     // BUTTONS
//                     SizedBox(
//                       width: 704,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           // Previous Button
//                           IconButton(
//                             onPressed: () {
//                               _carouselController.previousPage(
//                                 duration: const Duration(milliseconds: 500),
//                                 curve: Curves.slowMiddle,
//                               );
//                             },
//                             style: IconButton.styleFrom(
//                               backgroundColor: Colors.transparent,
//                               foregroundColor: AppColours.textColour,
//                               hoverColor:
//                                   AppColours.textColour.withOpacity(0.4),
//                               side: const BorderSide(
//                                 color: AppColours.textColour,
//                                 width: 2,
//                               ),
//                             ),
//                             iconSize: 18,
//                             icon: const Icon(
//                               Icons.arrow_back,
//                             ),
//                           ),
//                           AppSpacing.width16,
//                           // Next Button
//                           IconButton(
//                             onPressed: () {
//                               _carouselController.nextPage(
//                                 duration: const Duration(milliseconds: 500),
//                                 curve: Curves.slowMiddle,
//                               );
//                             },
//                             iconSize: 18,
//                             style: IconButton.styleFrom(
//                               backgroundColor: Colors.transparent,
//                               foregroundColor: AppColours.textColour,
//                               hoverColor:
//                                   AppColours.textColour.withOpacity(0.4),
//                               side: const BorderSide(
//                                 color: AppColours.textColour,
//                                 width: 2,
//                               ),
//                             ),
//                             icon: const Icon(Icons.arrow_forward),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

// // MY WORKS
//             ConstrainedBox(
//               constraints: BoxConstraints(maxHeight: screenHeight),
//               child: CustomCursor(
//                 imgPath: 'asset/images/app/cursor_1.png',
//                 child: Container(
//                   padding:
//                       const EdgeInsets.only(top: 96, left: 100, right: 100),
//                   width: screenWidth,
//                   decoration: const BoxDecoration(
//                     color: Colors.black87,
//                     //   borderRadius: BorderRadius.circular(32),
//                   ),
//                   child: SingleChildScrollView(
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 64),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           // RATEAM
//                           workSection(
//                             worksTitle: RateamStrings.rateAmTitle,
//                             role: AppStrings.role,
//                             roleBody: RateamStrings.rateAmRole,
//                             timeline: AppStrings.timeline,
//                             timelineBody: RateamStrings.rateAmTimeline,
//                             industry: AppStrings.industry,
//                             industryBody: RateamStrings.rateAmIndustry,
//                             imagePath: RateamStrings.rateAmImgPath,
//                             titleStyle: AppTextStyles.worksTitleText,
//                             subTitleStyle: AppTextStyles.worksSubTitleText,
//                             onTap: () {},
//                           ),

//                           AppSpacing.height144,
//                           // ADQUA
//                           workSection(
//                             worksTitle: RateamStrings.rateAmTitle,
//                             role: AppStrings.role,
//                             roleBody: RateamStrings.rateAmRole,
//                             timeline: AppStrings.timeline,
//                             timelineBody: RateamStrings.rateAmTimeline,
//                             industry: AppStrings.industry,
//                             industryBody: RateamStrings.rateAmIndustry,
//                             imagePath: RateamStrings.rateAmImgPath,
//                             titleStyle: AppTextStyles.worksTitleText,
//                             subTitleStyle: AppTextStyles.worksSubTitleText,
//                             onTap: () {},
//                           ),
//                           AppSpacing.height144,

//                           // CRUEL INTENTIONS
//                           workSection(
//                             worksTitle: RateamStrings.rateAmTitle,
//                             role: AppStrings.role,
//                             roleBody: RateamStrings.rateAmRole,
//                             timeline: AppStrings.timeline,
//                             timelineBody: RateamStrings.rateAmTimeline,
//                             industry: AppStrings.industry,
//                             industryBody: RateamStrings.rateAmIndustry,
//                             imagePath: RateamStrings.rateAmImgPath,
//                             titleStyle: AppTextStyles.worksTitleText,
//                             subTitleStyle: AppTextStyles.worksSubTitleText,
//                             onTap: () {},
//                           ),

//                           AppSpacing.height144,
//                           // PETROL ADVISORY
//                           workSection(
//                             worksTitle: RateamStrings.rateAmTitle,
//                             role: AppStrings.role,
//                             roleBody: RateamStrings.rateAmRole,
//                             timeline: AppStrings.timeline,
//                             timelineBody: RateamStrings.rateAmTimeline,
//                             industry: AppStrings.industry,
//                             industryBody: RateamStrings.rateAmIndustry,
//                             imagePath: RateamStrings.rateAmImgPath,
//                             titleStyle: AppTextStyles.worksTitleText,
//                             subTitleStyle: AppTextStyles.worksSubTitleText,
//                             onTap: () {},
//                           ),
//                           // END
//                           AppSpacing.height96,
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             // SIDE PROJECTS
//             ConstrainedBox(
//               constraints: BoxConstraints(maxHeight: screenHeight),
//               child: CustomCursor(
//                 imgPath: 'asset/images/app/cursor_1.png',
//                 child: Container(
//                   padding:
//                       const EdgeInsets.only(top: 96, left: 100, right: 100),
//                   width: screenWidth,
//                   decoration: const BoxDecoration(
//                     color: Colors.white70,
//                     //   borderRadius: BorderRadius.circular(32),
//                   ),
//                   child: SingleChildScrollView(
//                     child: Padding(
//                       padding: const EdgeInsets.only(top: 64, bottom: 64),
//                       child: Wrap(
//                         spacing: 40.0, // Horizontal spacing between children
//                         runSpacing: 40.0, // Vertical spacing between rows
//                         alignment: WrapAlignment.center,
//                         children: [
//                           ProjectItems(
//                             imgPath: ProjectStrings.socialIconsImgPath,
//                             title: ProjectStrings.socialIconsTitle,
//                             text: ProjectStrings.socialIconsText, onPressed: () {  },
//                           ),
//                           ProjectItems(
//                             imgPath: ProjectStrings.socialIconsImgPath,
//                             title: ProjectStrings.socialIconsTitle,
//                             text: ProjectStrings.socialIconsText, onPressed: () {  },
//                           ),
//                           ProjectItems(
//                             imgPath: ProjectStrings.socialIconsImgPath,
//                             title: ProjectStrings.socialIconsTitle,
//                             text: ProjectStrings.socialIconsText, onPressed: () {  },
//                           ),
//                           ProjectItems(
//                             imgPath: ProjectStrings.socialIconsImgPath,
//                             title: ProjectStrings.socialIconsTitle,
//                             text: ProjectStrings.socialIconsText, onPressed: () {  },
//                           ),
//                           ProjectItems(
//                             imgPath: ProjectStrings.socialIconsImgPath,
//                             title: ProjectStrings.socialIconsTitle,
//                             text: ProjectStrings.socialIconsText, onPressed: () {  },
//                           ),
//                           ProjectItems(
//                             imgPath: ProjectStrings.socialIconsImgPath,
//                             title: ProjectStrings.socialIconsTitle,
//                             text: ProjectStrings.socialIconsText, onPressed: () {  },
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             // ABOUT ME
//             ConstrainedBox(
//               constraints: BoxConstraints(maxHeight: screenHeight),
//               child: Container(
//                 margin: const EdgeInsets.all(14),
//                 padding: const EdgeInsets.all(24),
//                 width: screenWidth,
//                 decoration: BoxDecoration(
//                   color: AppColours.mainColour,
//                   borderRadius: BorderRadius.circular(32),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     //  HERO TEXT
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           width: 150,
//                           height: 150,
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(14),
//                               image: const DecorationImage(
//                                   image: AssetImage(AppStrings.profileImg))),
//                         ),
//                         AppSpacing.width16,
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               AppStrings.aboutTitle1,
//                               style: AppTextStyles.bodyTitleText,
//                             ),
//                             Text(
//                               AppStrings.aboutTitle2,
//                               style: AppTextStyles.bodyTitleText,
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     AppSpacing.height16,
//                     SizedBox(
//                       width: 790,
//                       child: Text(
//                         AppStrings.aboutBody,
//                         style: AppTextStyles.bodyText,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // CONTACT ME
//             ConstrainedBox(
//               constraints: BoxConstraints(maxHeight: screenHeight),
//               child: Container(
//                 margin: const EdgeInsets.all(14),
//                 padding: const EdgeInsets.all(24),
//                 width: screenWidth,
//                 decoration: BoxDecoration(
//                   color: AppColours.otherColour,
//                   borderRadius: BorderRadius.circular(32),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     //  HERO TEXT
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           AppStrings.contactTitle1,
//                           style: AppTextStyles.bodyTitleText,
//                         ),
//                         Text(
//                           AppStrings.contactTitle2,
//                           style: AppTextStyles.bodyTitleText,
//                         ),
//                         AppSpacing.height16,
//                         SizedBox(
//                           width: 434,
//                           child: Text(
//                             AppStrings.contactBody,
//                             style: AppTextStyles.bodyText,
//                           ),
//                         ),
//                         AppSpacing.height16,
//                         SizedBox(
//                           width: 220,
//                           child: IconButton(
//                             onPressed: () {
//                               js.context.callMethod(
//                                   'open', ['mailto:onwumerejudith@gmail.com']);
//                             },
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 20, vertical: 14),
//                             style: IconButton.styleFrom(
//                                 backgroundColor: Colors.transparent,
//                                 hoverColor:
//                                     AppColours.textColour.withOpacity(0.2),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(100),
//                                   side: const BorderSide(
//                                       color: AppColours.textColour, width: 2),
//                                 )),
//                             icon: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 const Icon(
//                                   Icons.mail,
//                                   color: AppColours.textColour,
//                                 ),
//                                 AppSpacing.width16,
//                                 Text(
//                                   AppStrings.contactBtnText,
//                                   style: AppTextStyles.btnText,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),

//         // HEADER FOOTER PAGE INDICATOR
//         Padding(
//           padding: const EdgeInsets.all(36.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               NavBar(
//                 onTap: (){},
//                 // onTap: (index) => scrollToSection(index),
//                 currentIndex: _currentIndex,
//               ),

//               //   PAGE INDICATOR AND FLOWER
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IgnorePointer(
//                     ignoring: true,
//                     child: Opacity(
//                       opacity:
//                           (_currentIndex == 2 || _currentIndex == 3) ? 0 : 1,
//                       child: SvgPicture.asset(
//                         AppStrings.flowerBg,
//                         width: 300,
//                         height: 300,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                   SmoothPageIndicator(
//                     controller: _pageController,
//                     count: 6, // Number of pages
//                     effect: WormEffect(
//                       dotColor: (_currentIndex == 2 || _currentIndex == 3)
//                           ? AppColours.otherColour.withOpacity(0.4)
//                           : AppColours.textColour.withOpacity(0.4),
//                       activeDotColor: (_currentIndex == 2 || _currentIndex == 3)
//                           ? AppColours.otherColour
//                           : AppColours.textColour,
//                       dotWidth: 8,
//                       dotHeight: 8,
//                     ), // Choose the type of effect
//                     axisDirection: Axis.vertical,
//                     onDotClicked: (index) => _pageController.animateToPage(
//                         index,
//                         duration: const Duration(milliseconds: 300),
//                         curve: Curves.easeIn),
//                   ),
//                 ],
//               ),

// // FOOTER
//               Opacity(
//                 opacity: (_currentIndex == 2 || _currentIndex == 3) ? 0 : 1,
//                 child: const AppFooter(
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ));
//   }
// }

// class ProjectItems extends StatelessWidget {
//   final String imgPath;
//   final String title;
//   final String text;
//   const ProjectItems({
//     super.key,
//     required this.imgPath,
//     required this.title,
//     required this.text, required Null Function() onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 300,
//       decoration: BoxDecoration(
//         color: AppColours.projectbgColour,
//         borderRadius: BorderRadius.circular(16),
//         border: Border.all(width: 1, color: AppColours.projectStrokeColour),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           ClipRRect(
//             borderRadius: const BorderRadius.only(
//               topLeft: Radius.circular(16),
//               topRight: Radius.circular(16),
//             ),
//             child: Image.asset(
//               imgPath,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   title,
//                   style: ProjectTextstyles.projectTitle,
//                 ),
//                 AppSpacing.height8,
//                 Text(
//                   text,
//                   style: ProjectTextstyles.projectText,
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Widget workSection({
//   required String worksTitle,
//   required String role,
//   required String roleBody,
//   required String timeline,
//   required String timelineBody,
//   required String industry,
//   required String industryBody,
//   required String imagePath,
//   required TextStyle titleStyle,
//   required TextStyle subTitleStyle,
//   required VoidCallback onTap,
// }) {
//   return InkWell(
//     onTap: onTap,
//     mouseCursor: SystemMouseCursors.none,
//     child: Column(
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             SizedBox(
//               width: 400,
//               child: Text(
//                 worksTitle,
//                 style: titleStyle,
//               ),
//             ),
//             WorksHeader(
//                 title: role,
//                 subTitle: roleBody,
//                 titleStyle: subTitleStyle,
//                 subTitleStyle: titleStyle),
//             WorksHeader(
//               title: timeline,
//               subTitle: timelineBody,
//               titleStyle: subTitleStyle,
//               subTitleStyle: titleStyle,
//             ),
//             WorksHeader(
//               title: industry,
//               subTitle: industryBody,
//               titleStyle: subTitleStyle,
//               subTitleStyle: titleStyle,
//             )
//           ],
//         ),
//         AppSpacing.height48,
//         Image.asset(imagePath),
//       ],
//     ),
//   );
// }
