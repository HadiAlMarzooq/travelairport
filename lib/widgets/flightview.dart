
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelairport/widgets/flight.dart';


class flightview extends StatefulWidget {
    final flight Flight;

  const flightview({ Key? key, required this.Flight }) : super(key: key);
  


  @override
  State<flightview> createState() => _flightviewState(Flight);
}

class _flightviewState extends State<flightview> {
      final flight Flight;
  _flightviewState(this.Flight);
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
                      Flight.flightNumber,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 200,),
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
                        DateFormat.yMMMMEEEEd().format(Flight.flightTime) +
                            '\n' +
                            DateFormat.j().format(Flight.flightTime),
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