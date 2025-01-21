import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/adqua/adqua_strings.dart';
import 'package:judith_onwumere/widgets/works/works_page.dart';

class Adqua extends StatelessWidget {
  const Adqua({super.key});

  @override
  Widget build(BuildContext context) {
    return const WorksPage(
    title: AdquaStrings.title,
        introduction: AdquaStrings.introduction,
        scope: AdquaStrings.scope,
        challenges: AdquaStrings.challenges,
        designSolution: AdquaStrings.designInnovations,
        keyResearch: AdquaStrings.keyResearch,
        impact: AdquaStrings.impact,
        reflection: AdquaStrings.reflection,
        coverImgPath: AdquaStrings.adquaImgPath,
        imgPath1: AdquaStrings.imgPath1,
        imgPath2: AdquaStrings.imgPath2,
        );
  }
}
