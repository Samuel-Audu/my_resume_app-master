import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/about/about_landscape.dart';
import 'package:portfolio_app/screens/about/about_screen.dart';

class ResponsiveAbout extends StatelessWidget {
  

  const ResponsiveAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:((context, constraints) {
        if (constraints.maxWidth<414) {
          return const AboutPortrait();
        }else{
          return const AboutLandscape();
        }
      })
    );
  }
}