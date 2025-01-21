import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/petrolad/petrol_advisory.dart';
import 'package:judith_onwumere/widgets/works/works_page.dart';

class Petrolad extends StatelessWidget {
  const Petrolad({super.key});

  @override
  Widget build(BuildContext context) {
    return const WorksPage(
      title: PaStrings.title,
      introduction: PaStrings.introduction,
      scope: PaStrings.scope,
      challenges: PaStrings.challenges,
      designSolution: PaStrings.designInnovations,
      keyResearch: PaStrings.keyResearch,
      impact: PaStrings.impact,
      reflection: PaStrings.reflection,
      coverImgPath: PaStrings.paImgPath,
      imgPath1: PaStrings.imgPath1,
      imgPath2: PaStrings.imgPath2,
    );
  }
}
