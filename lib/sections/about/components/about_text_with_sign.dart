import 'package:flutter/material.dart';

import '../../../constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "About \nmy story",
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: "Doctor Soos",
              fontSize: 60),
        ),
        SizedBox(height: kDefaultPadding),
        Image.asset("assets/images/sign2.png")
      ],
    );
  }
}
