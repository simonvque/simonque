import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/recent_works.dart';

class RecentWorksCard extends StatefulWidget {
  const RecentWorksCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);

  final int index;
  final VoidCallback press;

  @override
  State<RecentWorksCard> createState() => _RecentWorksCardState();
}

class _RecentWorksCardState extends State<RecentWorksCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: 320,
        width: 540,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isHover) kDefaultCardShadow],
        ),
        child: Row(
          children: [
            Image.asset(recentWorks[widget.index].image),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      recentWorks[widget.index].category.toUpperCase(),
                      style: TextStyle(fontFamily: "Doctor Soos", fontSize: 16),
                    ),
                    SizedBox(height: kDefaultPadding / 2),
                    Text(
                      recentWorks[widget.index].title,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                height: 1.5,
                                fontFamily: "Doctor Soos",
                                fontSize: 24,
                              ),
                    ),
                    SizedBox(height: kDefaultPadding),
                    InkWell(
                      onTap: widget.press,
                      child: Text(
                        "View Details",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: "Doctor Soos",
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
