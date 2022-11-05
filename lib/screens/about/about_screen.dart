import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPortrait extends StatefulWidget {
  const AboutPortrait({super.key});

  @override
  State<AboutPortrait> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutPortrait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text('About Me',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w100,
                  fontSize: 50,
                  color: Colors.white
                ),),
              ),
              const SizedBox(height: 15,),
              Center(
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(image:AssetImage("lib/images/my_picture.jpeg"),fit: BoxFit.fill),
                    border: Border.all(
                      color: Colors.yellow,
                      width: 4,
                    ),
                    shape: BoxShape.circle,
                  ),
                  
                ),
              ),
              const SizedBox(height: 25,),
              Text('Who am I?',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.yellow
                ),),
              const SizedBox(height: 25,),
              Text('I\'m Samuel Audu, a Flutter developer, Electrical/Electronics Engineering student and Tutor.',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.white
                ),),
              const SizedBox(height: 25,),
              Text('I\'m a final year Electrical/Electronics engineering student of University of Ilorin and presently an intern under the HNG 9.0 initiative. I have been developing apps for over 5 months now.',
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w200
                ),),
              const SizedBox(height: 25,),  
              Text('Technologies I have worked with:',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  color: Colors.yellow
                ),),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color:  Colors.yellow,
                       ),
                      Text(
                        "Flutter",
                          style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.white
                ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color:  Colors.yellow,
                       ),
                      Text(
                        "Dart",
                          style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.white
                ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.play_arrow,
                        color:  Colors.yellow,
                       ),
                      Text(
                        "Python",
                          style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  color: Colors.white
                ),
                      )
                    ],
                  ),
                ],
              ),  
            ],
          ),),),
    );
  }
}