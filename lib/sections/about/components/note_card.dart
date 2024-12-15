import 'package:flutter/material.dart';

import '../../../constants.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    Key? key,
    required this.number,
  }) : super(key: key);

  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      height: 240,
      width: 255,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Color(0xFFEDD2FC),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 3),
              blurRadius: 6,
              color: Color(0xFFA600FF).withOpacity(0.25),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Text(
                  number,
                  style: TextStyle(
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 6
                      ..color = Color(0xFFDFA3FF).withOpacity(0.5),
                    shadows: [
                      BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 10,
                          color: Color(0XFFA600FF).withOpacity(0.5))
                    ],
                  ),
                ),
                Text(
                  number,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 100,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Text(
              "Problems, But ~.~ \n... a Bug Ain't One",
              style: TextStyle(
                color: Color(0XFFA600FF),
                fontFamily: 'Doctor Soos',
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
