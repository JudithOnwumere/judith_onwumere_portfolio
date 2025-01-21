import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/rateam/rateam_strings.dart';

import 'package:judith_onwumere/widgets/works/works_page.dart';

class Rateam extends StatelessWidget {
  const Rateam({super.key});

  @override
  Widget build(BuildContext context) {
    return const WorksPage(
        title: RateamStrings.title,
        introduction: RateamStrings.introduction,
        scope: RateamStrings.scope,
        challenges: RateamStrings.challenges,
        designSolution: RateamStrings.designInnovations,
        keyResearch: RateamStrings.keyResearch,
        impact: RateamStrings.impact,
        reflection: RateamStrings.reflection,
        coverImgPath: RateamStrings.rateAmImgPath,
        imgPath1: RateamStrings.imgPath1,
        imgPath2: RateamStrings.imgPath2,
        );
  }
}
