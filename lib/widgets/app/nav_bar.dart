import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';
import 'package:judith_onwumere/styles/app/app_strings.dart';
import 'package:judith_onwumere/styles/app/app_text_styles.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';
import 'package:judith_onwumere/styles/app/mobile/app_text_styles.dart';
import 'package:judith_onwumere/widgets/app/hover_link.dart';

class NavBar extends StatelessWidget {
  final VoidCallback onTap;
  final int currentIndex;

  const NavBar({super.key, required this.onTap, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 800) {
          // Mobile/Tablet View: Show Menu Button with Drawer
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: onTap,
                child: Text(
                  AppStrings.appLogo,
                  style: MobileAppTextStyles.appLogo.copyWith(
                    color: (currentIndex == 2)
                        ? AppColours.otherColour
                        : AppColours.textColour,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                color: (currentIndex == 2)
                    ? AppColours.otherColour
                    : AppColours.textColour,
                iconSize: 28,
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ],
          );
        } else {
          // Desktop View: Show Full Navigation Links
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap:onTap,
                child: Text(
                  AppStrings.appLogo,
                  style: AppTextStyles.appLogo.copyWith(
                    color: (currentIndex == 2)
                        ? AppColours.otherColour
                        : AppColours.textColour,
                  ),
                ),
              ),
              Row(
                children: [
                  HoverLink(
                    onTap: onTap,
                    text: AppStrings.navLink1,
                    currentIndex: currentIndex,
                    linkIndex: 1,
                  ),
                  AppSpacing.width32,
                  HoverLink(
                    onTap: onTap,
                    text: AppStrings.navLink2,
                    currentIndex: currentIndex,
                    linkIndex: 2,
                  ),
                  AppSpacing.width32,
                  HoverLink(
                    onTap: onTap,
                    text: AppStrings.navLink3,
                    currentIndex: currentIndex,
                    linkIndex: 3,
                  ),
                  AppSpacing.width32,
                  HoverLink(
                    onTap: onTap,
                    text: AppStrings.navLink4,
                    currentIndex: currentIndex,
                    linkIndex: 4,
                  ),
                  AppSpacing.width32,
                  HoverLink(
                    onTap: onTap,
                    text: AppStrings.navLink5,
                    currentIndex: currentIndex,
                    linkIndex: 5,
                  ),
                ],
              ),
            ],
          );
        }
      },
    );
  }
}
