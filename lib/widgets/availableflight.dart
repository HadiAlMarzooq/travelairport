import 'package:flutter/material.dart';
import 'package:travelairport/widgets/help.dart';
import 'package:travelairport/widgets/availableflight.dart';
import 'package:intl/intl.dart';
import 'package:travelairport/widgets/flight.dart';
import 'package:travelairport/widgets/dropdownlist.dart';

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
        backgroundColor: Colors.grey[400],
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: [
                    SizedBox(width: 30),
                    Text(
                      'Hey, guest..',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 200,),
                dropdownlist(),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 300,
                  height: 75,
                  child: Card(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.watch_later_rounded),
                      Center(
                          child: Text(
                        DateFormat.yMMMMEEEEd().format(DateTime.now()) +
                            '\n' +
                            DateFormat.j().format(DateTime.now()),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                    ],
                  )),
                )
              ]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
