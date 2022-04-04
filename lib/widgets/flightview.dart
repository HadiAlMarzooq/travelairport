import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:travelairport/widgets/explore.dart';
import 'package:travelairport/widgets/flight.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travelairport/widgets/percentage.dart';
import 'package:travelairport/widgets/timecard.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travelairport/widgets/loggedin.dart';
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
          backgroundColor: HexColor("F5F5F5"),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          elevation: 0,
          splashColor: Colors.black,
          hoverElevation: 50,
        ),
        backgroundColor: HexColor('F5F5F5'),
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
                    const SizedBox(width: 90),
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
                          width: 45,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/images/saudi-arabia.svg',
                              height: 30,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        const Text("DMM",
                            textScaleFactor: 1.6,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black))
                      ],
                    ),
                    Lottie.asset('assets/images/flight_from_to.json',
                        height: 40),
                    Row(
                      children: [
                        ClipOval(
                          child: Container(
                            height: 40,
                            width: 40,
                            child: SvgPicture.asset(
                              'assets/images/saudi-arabia.svg',
                              height: 30,
                              fit: BoxFit.fitHeight,
                            ),
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        const Text("JED",
                            textScaleFactor: 1.6,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
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
                            children: [
                              Center(
                                  child: TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const explore()),
                                  );
                                },
                                child: const Text(
                                  'Guide me to my gate or a facility',
                                  textScaleFactor: 1.6,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              )),
                            ],
                          )),
                    ),
                  ],
                )
              ]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
