import 'package:flutter/material.dart';
import 'package:my_protfolio/constants.dart';
import 'package:my_protfolio/models/skills.dart';

import '../../components/section_title.dart';
import 'components/skills_card.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            color: Color(0xFFFF0000),
            title: "Skill Set",
            subTitle: "My Strong Areas",
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
                skills.length, (index) => SkillsCard(index: index)),
          ),
        ],
      ),
    );
  }
}
