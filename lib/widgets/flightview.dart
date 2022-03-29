import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelairport/widgets/flight.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travelairport/widgets/percentage.dart';
import 'package:travelairport/widgets/timecard.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travelairport/widgets/availableflight.dart';

class flightview extends StatefulWidget {
  final flight Flight;

  const flightview({Key? key, required this.Flight}) : super(key: key);

  @override
  State<flightview> createState() => _flightviewState(Flight);
}

class _flightviewState extends State<flightview> {
  final flight Flight;
  String calculateFlDiff() {
    return (Flight.flightTime.difference(DateTime.now()).toString());
  }

  _flightviewState(this.Flight);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const availableflight()),
            );
            // Add your onPressed code here!
          },
          backgroundColor: HexColor("#EDE6E6"),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          elevation: 0,
          splashColor: Colors.black,
          hoverElevation: 50,
        ),
        backgroundColor: HexColor('#EDE6E6'),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                timecard(fl: Flight.flightTime),
                SizedBox(height: 50),
                Text(
                  'Time Left Until Take Off',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Center(child: percentage(fl: Flight)),
                Row(
                  children: [
                    SizedBox(width: 50),
                    Text(
                      calculateFlDiff().split(':')[0] +
                          ' HOURS ' +
                          calculateFlDiff().split(':')[1] +
                          ' MINUTES LEFT',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                SizedBox(
                    height: 130,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Flight Number',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 125,
                              height: 75,
                              child: Card(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                      child: Text(
                                    Flight.flightNumber,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )),
                                ],
                              )),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Gate Number',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              width: 125,
                              height: 75,
                              child: Card(
                                  child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Center(
                                      child: Text(
                                    Flight.gateNumber.toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  )),
                                ],
                              )),
                            )
                          ],
                        )
                      ],
                    )),
                Column(
                  children: [
                    SizedBox(
                      width: 350,
                      height: 75,
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Text(
                            'Guide me to my gate or a facility',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                        ],
                      )),
                    ),
                    SizedBox(
                      width: 350,
                      height: 75,
                      child: Card(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Center(
                              child: Text(
                            'Show my flights details',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          )),
                        ],
                      )),
                    )
                  ],
                )
              ]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
