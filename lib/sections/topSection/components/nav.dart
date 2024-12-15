import 'package:flutter/material.dart';

import '../../../constants.dart';

class NavBar extends StatefulWidget {
  final Function(int) onNavTap; // Callback for navigation taps
  const NavBar({super.key, required this.onNavTap});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedIndex = 0;
  int hoverIndex = 0;
  List<String> navItems = [
    "Home",
    "About",
    "Skills",
    "Portfolio",
    "Blog",
    "Contact"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1110),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        boxShadow: [kDefaultShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          navItems.length,
          (index) => buildNavItem(index),
        ),
      ),
    );
  }

  Widget buildNavItem(int index) => InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
          widget.onNavTap(index); // Notify parent of the navigation tap
        },
        onHover: (value) {
          setState(() {
            value ? hoverIndex = index : hoverIndex = selectedIndex;
          });
        },
        child: Container(
          constraints: BoxConstraints(minWidth: 122),
          height: 100,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Text(
                navItems[index],
                style: TextStyle(
                  fontSize: 24,
                  color: kTextColor,
                  fontFamily: 'Doctor Soos',
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Hover
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom:
                    selectedIndex != index && hoverIndex == index ? -20 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
              // Select
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                left: 0,
                right: 0,
                bottom: selectedIndex == index ? -2 : -32,
                child: Image.asset("assets/images/Hover.png"),
              ),
            ],
          ),
        ),
      );
}
