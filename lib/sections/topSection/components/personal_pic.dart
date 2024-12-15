import 'package:flutter/material.dart';

class PersonalPic extends StatelessWidget {
  const PersonalPic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 639, maxHeight: 860),
      child: Image.asset("assets/images/topimage.png"),
    );
  }
}
