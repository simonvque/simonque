import 'package:flutter/material.dart';
import 'package:my_protfolio/components/section_title.dart';
import 'package:my_protfolio/constants.dart';

import '../../models/blog.dart';
import 'components/blog_item.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: "My Blog",
            subTitle: "This is the journey",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(height: kDefaultPadding),
          Column(
            children: blogs.map((blog) => BlogItem(blog: blog)).toList(),
          ),
        ],
      ),
    );
  }
}
