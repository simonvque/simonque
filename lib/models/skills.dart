import 'package:flutter/material.dart';

class Skills {
  final int id;
  final String title, image;
  final Color color;

  Skills(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

// For demo list of service
List<Skills> skills = [
  Skills(
    id: 1,
    title: "Web Development",
    image: "assets/images/skill1.png",
    color: Color(0xFFD9FFFC),
  ),
  Skills(
    id: 2,
    title: "Mobile Developement",
    image: "assets/images/skill2.png",
    color: Color(0xFFE4FFC7),
  ),
  Skills(
    id: 3,
    title: "UI/UX Design",
    image: "assets/images/skill3.png",
    color: Color(0xFFFFF3DD),
  ),
  Skills(
    id: 4,
    title: "Data Insights",
    image: "assets/images/skill4.png",
    color: Color(0xFFFFE0E0),
  ),
];
