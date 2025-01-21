import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:judith_onwumere/styles/app/app_colours.dart';
import 'package:judith_onwumere/styles/app/app_spacing.dart';
import 'package:judith_onwumere/styles/app/app_strings.dart';
import 'package:judith_onwumere/styles/app/app_text_styles.dart';
import 'package:judith_onwumere/widgets/app/social_links.dart';
import 'dart:js' as js;

class WorksAppbar extends StatelessWidget implements PreferredSizeWidget {
  const WorksAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColours.textColour,
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: 72,
          title: InkWell(
            onTap: () => Navigator.pop(context),
            child: Row(
              children: [
                const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 20,
                ),
                AppSpacing.width16,
                Text(
                  AppStrings.backToHome,
                  style: AppTextStyles.bodyText
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 32),
                child: IconButton(
                  onPressed: () {
                    js.context.callMethod('open', [
                      'https://linktr.ee/Judith_Onwumere?utm_source=linktree_profile_share'
                    ]);
                  },
                  icon: const Icon(FontAwesome.people_group_solid),
                )),
          ],
        );
      } else {
        return AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: AppColours.textColour,
          automaticallyImplyLeading: false,
          elevation: 0,
          toolbarHeight: 100,
          title: InkWell(
            onTap: () => Navigator.pop(context),
            child: Row(
              children: [
                const Icon(Icons.arrow_back_ios_new_outlined),
                AppSpacing.width16,
                Text(
                  AppStrings.backToHome,
                  style: AppTextStyles.appLogo,
                ),
              ],
            ),
          ),
          titleSpacing: 64,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 64),
              child: SocialLinks(),
            ),
          ],
        );
      }
    });
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
