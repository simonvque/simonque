import 'package:flutter/material.dart';
import 'package:my_protfolio/constants.dart';
import 'package:my_protfolio/sections/about/components/note_card.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../components/default_button.dart';
import '../../components/my_outline_button.dart';
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "My passion for tech and programming, especially mobile development, stems from: creating products that not only meet customer needs but also make people go, “Wow, this just works!” There’s something nice about turning lines of code into something that improves lives while making a genuine difference in the community around me.",
                ),
              ),
              NoteCard(number: "99"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Growing up, I was the curious kid who couldn’t stop asking “why” and “how.” I’d take things apart, just to figure them out. That curiosity eventually led me to programming, where I discovered the thrill of building & perfecting ideas. Now, I’m driven by the challenge of crafting solutions that are both clever and user-friendly.",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {
                  _launchUrl(
                      "https://www.linkedin.com/in/simon-que-018361264/");
                },
              ),
              SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {
                  _launchUrl(
                      "https://drive.google.com/uc?export=download&id=1Ej-6bE25AF9n9ULjHiIFyFEIK0V8onpj");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
