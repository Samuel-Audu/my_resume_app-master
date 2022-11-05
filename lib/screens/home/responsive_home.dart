import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/home/home_landscape.dart';
import 'package:portfolio_app/screens/home/home_screen.dart';

class ResponsiveHome extends StatelessWidget {
  
  const ResponsiveHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:((context, constraints) {
        if (constraints.maxWidth<414) {
          return const HomePortrait();
        }else{
          return const HomeLandscape();
        }
      })
    );
  }
}