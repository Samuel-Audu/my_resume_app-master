import 'package:flutter/material.dart';
import 'package:portfolio_app/screens/services/services_landscape.dart';
import 'package:portfolio_app/screens/services/services_screen.dart';

class ResponsiveServices extends StatelessWidget {

  const ResponsiveServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder:((context, constraints) {
        if (constraints.maxWidth<414) {
          return const ServicesPortrait();
        }else{
          return const ServicesLanscape();
        }
      })
    );
  }
}