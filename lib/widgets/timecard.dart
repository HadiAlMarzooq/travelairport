import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class timecard extends StatefulWidget {
  final DateTime fl;

  const timecard({Key? key, required this.fl}) : super(key: key);

  @override
  State<timecard> createState() => _timecardState(fl);
}

class _timecardState extends State<timecard> {
  final DateTime fl;
  _timecardState(this.fl);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 100,
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Lottie.asset('assets/images/clock.json', width: 30),
                Center(
                    child: Text(
                  DateFormat.yMMMMEEEEd().format(fl) +
                      '\n' +
                      DateFormat.j().format(fl),
                  textScaleFactor: 1.5,
                  style: GoogleFonts.ibmPlexMono(
                      textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: HexColor("387D7A"))),
                )),
              ],
            ),
          )),
    );
  }
}
