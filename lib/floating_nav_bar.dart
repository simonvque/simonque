import 'package:flutter/material.dart';

class FloatingNavBar extends StatefulWidget {
  final Function(int) onNavTap;

  const FloatingNavBar({super.key, required this.onNavTap});

  @override
  State<FloatingNavBar> createState() => _FloatingNavBarState();
}

class _FloatingNavBarState extends State<FloatingNavBar> {
  int hoveredIndex = -1; // Track which item is hovered

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildNavButton("Home", 0),
        _buildNavButton("About", 1),
        _buildNavButton("Skills", 2),
        _buildNavButton("Portfolio", 3),
        _buildNavButton("Blog", 4),
        _buildNavButton("Contact", 5),
      ],
    );
  }

  Widget _buildNavButton(String label, int index) {
    return InkWell(
      onTap: () => widget.onNavTap(index),
      onHover: (isHovered) {
        setState(() {
          hoveredIndex = isHovered ? index : -1;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          border: hoveredIndex == index
              ? const Border(
                  bottom: BorderSide(width: 2, color: Colors.black),
                )
              : null, // Underline on hover
        ),
        child: Text(
          label,
          style: TextStyle(
            fontFamily: "Doctor Soos",
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: hoveredIndex == index ? Colors.blue : Colors.black,
            decoration: hoveredIndex == index ? TextDecoration.underline : null,
          ),
        ),
      ),
    );
  }
}
