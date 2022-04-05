import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:travelairport/widgets/help.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travelairport/widgets/availableflight.dart';
import 'package:intl/intl.dart';
import 'package:travelairport/widgets/flight.dart';
import 'package:travelairport/widgets/dropdownlist.dart';
import 'package:travelairport/widgets/flightview.dart';
import 'package:travelairport/widgets/timecard.dart';
import 'package:google_fonts/google_fonts.dart';

class availableflight extends StatefulWidget {
  const availableflight({Key? key}) : super(key: key);

  @override
  State<availableflight> createState() => _availableflightState();
}

class _availableflightState extends State<availableflight> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('F5F5F5'),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: [
                    const SizedBox(width: 30),
                    Text(
                      'Welcome, Guest!',
                      textScaleFactor: 2.3,
                      style: GoogleFonts.archivo(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 150,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: dropdownlist(),
                ),
                const SizedBox(
                  height: 120,
                ),
                timecard(fl: DateTime.now())
              ]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
