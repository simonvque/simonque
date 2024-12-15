import 'package:flutter/material.dart';
import 'package:my_protfolio/constants.dart';

import 'components/logo_blur_box.dart';
import 'components/nav.dart';
import 'components/personal_pic.dart';

class TopSection extends StatelessWidget {
  final Function(int) onNavTap;
  const TopSection({super.key, required this.onNavTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(maxHeight: 900, minHeight: 700),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/3.png"),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              bottom: 0,
              right: 0,
              child: PersonalPic(),
            ),
            Positioned(
              bottom: 0,
              child: NavBar(onNavTap: onNavTap),
            )
          ],
        ),
      ),
    );
  }
}
