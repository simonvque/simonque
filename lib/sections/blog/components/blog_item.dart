import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/blog.dart';

class BlogItem extends StatelessWidget {
  final Blog blog;

  const BlogItem({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 6)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            blog.title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: "Doctor Soos",
                  fontSize: 30,
                ),
          ),
          SizedBox(height: kDefaultPadding),
          CarouselSlider(
            options: CarouselOptions(
              height: 500,
              autoPlay: true,
              enlargeCenterPage: true,
            ),
            items: blog.images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: kDefaultPadding),
          Text(
            blog.description,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Colors.grey[700],
                  height: 1.5,
                  fontFamily: "Doctor Soos",
                  fontSize: 18,
                ),
          ),
        ],
      ),
    );
  }
}
