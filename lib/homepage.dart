import 'package:flutter/material.dart';
import 'package:my_protfolio/constants.dart';
import 'package:my_protfolio/sections/about/about_section.dart';
import 'package:my_protfolio/sections/blog/blog_section.dart';
import 'package:my_protfolio/sections/contact/contactme.dart';
import 'package:my_protfolio/sections/recent_work.dart/recent_work_section.dart';
import 'package:my_protfolio/sections/skills/skills_section.dart';
import 'package:my_protfolio/sections/topSection/top_section.dart';

import 'floating_nav_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // GlobalKeys for each section
  final GlobalKey topSectionKey = GlobalKey();
  final GlobalKey aboutSectionKey = GlobalKey();
  final GlobalKey skillsSectionKey = GlobalKey();
  final GlobalKey portfolioSectionKey = GlobalKey();
  final GlobalKey blogSectionKey = GlobalKey();
  final GlobalKey contactSectionKey = GlobalKey();

  // ScrollController for smooth scrolling and detecting scroll
  final ScrollController scrollController = ScrollController();

  // State to track floating nav bar visibility
  bool isFloatingNavVisible = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    scrollController.removeListener(_onScroll);
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    // Determine if the user has scrolled past the TopSection
    if (scrollController.offset > 600 && !isFloatingNavVisible) {
      setState(() {
        isFloatingNavVisible = true;
      });
    } else if (scrollController.offset <= 600 && isFloatingNavVisible) {
      setState(() {
        isFloatingNavVisible = false;
      });
    }
  }

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main content
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                TopSection(
                  key: topSectionKey,
                  onNavTap: (index) {
                    switch (index) {
                      case 0:
                        scrollToSection(topSectionKey);
                        break;
                      case 1:
                        scrollToSection(aboutSectionKey);
                        break;
                      case 2:
                        scrollToSection(skillsSectionKey);
                        break;
                      case 3:
                        scrollToSection(portfolioSectionKey);
                        break;
                      case 4:
                        scrollToSection(blogSectionKey);
                        break;
                      case 5:
                        scrollToSection(contactSectionKey);
                        break;
                    }
                  },
                ),
                SizedBox(height: kDefaultPadding * 2),
                AboutSection(key: aboutSectionKey),
                SkillsSection(key: skillsSectionKey),
                RecentWorkSection(key: portfolioSectionKey),
                BlogSection(key: blogSectionKey),
                ContactMe(key: contactSectionKey),
              ],
            ),
          ),
          // Floating navigation bar
          if (isFloatingNavVisible)
            Positioned(
              right: 20,
              top: MediaQuery.of(context).size.height * 0.4,
              child: FloatingNavBar(onNavTap: (index) {
                switch (index) {
                  case 0:
                    scrollToSection(topSectionKey);
                    break;
                  case 1:
                    scrollToSection(aboutSectionKey);
                    break;
                  case 2:
                    scrollToSection(skillsSectionKey);
                    break;
                  case 3:
                    scrollToSection(portfolioSectionKey);
                    break;
                  case 4:
                    scrollToSection(blogSectionKey);
                    break;
                  case 5:
                    scrollToSection(contactSectionKey);
                    break;
                }
              }),
            ),
        ],
      ),
    );
  }
}
