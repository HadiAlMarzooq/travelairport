import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelairport/widgets/flight.dart';
import 'package:hexcolor/hexcolor.dart';

class flightview extends StatefulWidget {
  final flight Flight;

  const flightview({Key? key, required this.Flight}) : super(key: key);

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
        backgroundColor: HexColor('#EDE6E6'),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  children: [
                    const SizedBox(width: 30),
                    Text(
                      Flight.flightNumber,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 200,
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: 300,
                  height: 75,
                  child: Card(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Icon(Icons.watch_later_rounded),
                      Center(
                          child: Text(
                        DateFormat.yMMMMEEEEd().format(Flight.flightTime) +
                            '\n' +
                            DateFormat.j().format(Flight.flightTime),
                        style: const TextStyle(
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
