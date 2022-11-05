

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  final String icon;
  final String url;
  const SocialMedia({super.key, required this.icon, required this.url});

 

  @override
  Widget build(BuildContext context) {
    final Uri urll = Uri.parse(url);

    return GestureDetector(
      onTap: () async {
        if (!await launchUrl(urll)) {
          throw 'Could not launch $urll';
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(8),
        height: 40.0,
        child: Image.asset(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}

class CallButton extends StatelessWidget {
  final String icon;
  final String url;
  const CallButton({super.key, required this.icon, required this.url});

 

  @override
  Widget build(BuildContext context) {
    

    return GestureDetector(
      onTap: () async {
        final Uri launchUri = Uri(
          scheme: 'tel',
          path: url,
        );
        await launchUrl(launchUri);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(8),
        height: 40.0,
        child: Image.asset(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}

class MailButton extends StatelessWidget {
  final String icon;
  final String url;
  const MailButton({super.key, required this.icon, required this.url});

 

  @override
  Widget build(BuildContext context) {
    

    return GestureDetector(
      onTap: () async {
        final Uri emailLaunchUri = Uri(
          scheme: 'mailto',
          path: url,
        );

       await launchUrl(emailLaunchUri);
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(8),
        height: 40.0,
        child: Image.asset(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}

