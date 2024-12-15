import 'package:flutter/material.dart';
import 'package:my_protfolio/homepage.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

//hi
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // scaffoldBackgroundColor: Colors.white,
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}
