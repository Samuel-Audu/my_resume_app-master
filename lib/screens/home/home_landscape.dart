import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_app/screens/about/responsive_about.dart';
import 'package:portfolio_app/screens/home/responsive_home.dart';
import 'package:portfolio_app/screens/home/social_links.dart';
import 'package:portfolio_app/screens/services/responsive_service.dart';

class HomeLandscape extends StatefulWidget {
  const HomeLandscape({super.key});

  @override
  State<HomeLandscape> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeLandscape> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.grey[800],
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Text(
                'P O R T F O L I O',
                style: TextStyle(fontSize: 30, color: Colors.yellow),
              )),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.yellow,
                ),
                title: const Text(
                  'Home',
                  style: TextStyle(color: Colors.yellow, fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const ResponsiveHome())));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Colors.yellow,
                ),
                title: const Text(
                  'About',
                  style: TextStyle(color: Colors.yellow, fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const ResponsiveAbout())));
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Colors.yellow,
                ),
                title: const Text(
                  'Services',
                  style: TextStyle(color: Colors.yellow, fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const ResponsiveServices())));
                },
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'HEY THERE!',
                  style:
                      GoogleFonts.montserrat(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Samuel',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w100,
                      fontSize: 50,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Audu',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.play_arrow_rounded,
                      color: Colors.yellow,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          ' Flutter Developer',
                          speed: const Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(
                              fontSize: 18, color: Colors.white),
                        ),
                        TyperAnimatedText(
                          ' Football Enthusiast',
                          speed: const Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(
                              fontSize: 18, color: Colors.white),
                        ),
                        TyperAnimatedText(
                          ' A friend :)',
                          speed: const Duration(milliseconds: 50),
                          textStyle: GoogleFonts.montserrat(
                              fontSize: 18, color: Colors.white),
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CallButton(icon: 'lib/icons/phone.png', url: '+2348132858963'),
                  SocialMedia(
                      icon: 'lib/icons/twitter.png',
                      url: 'https://twitter.com/Prince_Samuel_A'),
                  SocialMedia(
                      icon: 'lib/icons/linkedin.png',
                      url: 'https://www.linkedin.com/in/samuel-audu-0883231b4/'),
                  SocialMedia(
                      icon: 'lib/icons/github.png',
                      url: 'https://t.co/T4N9WETYib'),
                  MailButton(
                      icon: 'lib/icons/gmail.png', url: 'mrsamueladi@gmail.com'),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
