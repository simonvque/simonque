import 'package:flutter/material.dart';
import 'package:my_protfolio/components/section_title.dart';
import 'package:my_protfolio/constants.dart';
import 'package:my_protfolio/models/recent_works.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/hireme_card.dart';
import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  const RecentWorkSection({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        // image: DecorationImage(
        //   fit: BoxFit.cover,
        //   image: AssetImage(""),
        // ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: "Recent Works",
            subTitle: "List of my works",
            color: Color(0xFFFFB100),
          ),
          SizedBox(
            height: kDefaultPadding * 1.5,
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorksCard(
                  index: index,
                  press: () {
                    _launchUrl(recentWorks[index].link);
                  },
                ),
              ),
            ),
          ),
          SizedBox(height: kDefaultPadding * 5),
        ],
      ),
    );
  }
}
