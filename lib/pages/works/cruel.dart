import 'package:flutter/material.dart';
import 'package:judith_onwumere/styles/quebits/quebits_strings.dart';
import 'package:judith_onwumere/widgets/works/works_page.dart';

class Cruel extends StatelessWidget {
  const Cruel({super.key});

  @override
  Widget build(BuildContext context) {
    return const WorksPage(
      title: QuebitsStrings.title,
      introduction: QuebitsStrings.introduction,
      scope: QuebitsStrings.scope,
      challenges: QuebitsStrings.challenges,
      designSolution: QuebitsStrings.designInnovations,
      keyResearch: QuebitsStrings.keyResearch,
      impact: QuebitsStrings.impact,
      reflection: QuebitsStrings.reflection,
      coverImgPath: QuebitsStrings.cruelImgPath,
      imgPath1: QuebitsStrings.imgPath1,
      imgPath2: QuebitsStrings.imgPath2,
    );
  }
}
