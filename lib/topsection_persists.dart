import 'package:flutter/material.dart';
import 'package:my_protfolio/sections/topSection/top_section.dart';

class TopSectionPersistentHeaderDelegate
    extends SliverPersistentHeaderDelegate {
  final Function(int) onNavTap;

  TopSectionPersistentHeaderDelegate({required this.onNavTap});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return TopSection(onNavTap: onNavTap);
  }

  @override
  double get maxExtent => 900; // Max height of the TopSection
  @override
  double get minExtent => 100; // Height when NavBar is pinned
  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
