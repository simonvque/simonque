import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_protfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    super.key,
    required this.size,
  });

  final Size size;

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
          constraints:
              BoxConstraints(maxWidth: 1110, maxHeight: size.height * 0.6),
          width: double.infinity,
          color: Colors.white.withOpacity(0.1),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black,
                      fontFamily: 'Doctor Soos',
                      fontSize: 36,
                    ),
              ),
              Text(
                "Simon Que",
                style: TextStyle(
                  fontSize: 100,
                  fontFamily: 'Sprite Graffiti',
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  height: 1.2,
                ),
              ),
              Text(
                "Innovating One Byte at a Time",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.black,
                      fontFamily: 'Doctor Soos',
                      fontSize: 30,
                    ),
              ),
              SizedBox(height: kDefaultPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Tooltip(
                    message: "GitHub",
                    child: IconButton(
                      icon: Icon(Icons.code),
                      color: Colors.black,
                      iconSize: 30,
                      onPressed: () {
                        _launchUrl("https://github.com/simonvque");
                      },
                    ),
                  ),
                  const SizedBox(width: kDefaultPadding),
                  Tooltip(
                    message: "LinkedIn",
                    child: IconButton(
                      icon: Icon(Icons.link),
                      color: Colors.black,
                      iconSize: 30,
                      onPressed: () {
                        _launchUrl(
                            "https://www.linkedin.com/in/simon-que-018361264/");
                      },
                    ),
                  ),
                  const SizedBox(width: kDefaultPadding),
                  Tooltip(
                    message: "Instagram",
                    child: IconButton(
                      icon: Icon(Icons.camera_alt),
                      color: Colors.black,
                      iconSize: 30,
                      onPressed: () {
                        _launchUrl("https://www.instagram.com/oddballorange/");
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
