import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

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
      width: 300,
      height: 75,
      child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Lottie.asset('assets/images/clock.json', height: 40),
              Center(
                  child: Text(
                DateFormat.yMMMMEEEEd().format(fl) +
                    '\n' +
                    DateFormat.j().format(fl),
                textScaleFactor: 1.2,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )),
            ],
          )),
    );
  }
}