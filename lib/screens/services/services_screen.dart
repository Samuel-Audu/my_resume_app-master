import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesPortrait extends StatefulWidget {
  const ServicesPortrait({super.key});

  @override
  State<ServicesPortrait> createState() => _MyServicesState();
}

class _MyServicesState extends State<ServicesPortrait> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              Center(
                child: Text('What I Do',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w100,
                  fontSize: 50,
                  color: Colors.white
                ),),
              ),
              const SizedBox(height: 20,),
              Center(
                  child: FlipCard(
                fill: Fill
                    .fillBack, // Fill the back side of the card to make in the same size as the front.
                direction: FlipDirection.HORIZONTAL, // default
                front: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800]
                  ),
                  height: 300,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            height: 100.0,
                            child: Image.asset(
                              'lib/icons/mobile-coding.png',
                            ),
                          ),

                          Text('Full App Development',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ),
                ),
                back:Center(
                  child: Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(color: Colors.grey[800]),
                    child:  Text('Android app development via Flutter\n- Building UIs\n- Local Storage\n- Firebase Auth\n- Rest APIs and more...',
                            style: GoogleFonts.montserrat(
                      color: Colors.white
                    ), ),
                  ),
                ),
                ),
              )
            ],
          ),),),
    );
  }
}