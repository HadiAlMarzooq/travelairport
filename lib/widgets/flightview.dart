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
                const SizedBox(height: 40),
                const Text(
                  'Time Left Until Take Off',
                  textScaleFactor: 1.6,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(child: percentage(fl: Flight)),
                ),
                Row(
                  children: [
                    SizedBox(width: 90),
                    Text(
                      calculateFlDiff().split(':')[0] +
                          ' HOURS ' +
                          calculateFlDiff().split(':')[1] +
                          ' MINUTES LEFT',
                      textScaleFactor: 1.2,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                SizedBox(
                    height: 130,
                    width: 300,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            const Text(
                              'Flight Number',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            SizedBox(
                              width: 125,
                              height: 75,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                          child: Text(
                                        Flight.flightNumber,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      )),
                                    ],
                                  )),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Column(
                          children: [
                            const Text(
                              'Gate Number',
                              textScaleFactor: 1.4,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            SizedBox(
                              width: 125,
                              height: 75,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Center(
                                          child: Text(
                                        Flight.gateNumber.toString(),
                                        style: const TextStyle(
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
                const SizedBox(height: 10.0),
                Column(
                  children: [
                    SizedBox(
                      width: 350,
                      height: 75,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Center(
                                  child: Text(
                                'Guide me to my gate or a facility',
                                textScaleFactor: 1.6,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              )),
                            ],
                          )),
                    ),
                    const SizedBox(height: 6.0),
                    SizedBox(
                      width: 350,
                      height: 75,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Center(
                                  child: Text(
                                'Show my flights details',
                                textScaleFactor: 1.6,
                                style: TextStyle(
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
