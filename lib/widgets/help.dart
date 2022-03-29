import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travelairport/widgets/help.dart';
import 'package:travelairport/widgets/help.dart';
import 'package:travelairport/widgets/availableflight.dart';

class help extends StatefulWidget {
  const help({Key? key}) : super(key: key);

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: HexColor('#EDE6E6'),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "FAQs",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                      fontFamily: "Lato"),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 350,
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "* How will TravAirport help me?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Lato"),
                      ),
                      Text(
                        "TravAirport will help you arrange your time in the airport. It can guide you to your gate or any other facility in the airport you are in. It notifies you whenever it is necessary.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: HexColor("004E64")),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      const Text(
                        "* I chose the wrong flight.How can I change it to the correct one?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Lato"),
                      ),
                      Text(
                        "You can do this by going back to the Choose Flight No. page using the arrow at the top left.",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: HexColor("004E64")),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.attach_email,
                            color: Colors.blueGrey, size: 60),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Text(
                                "Contact Us",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "Lato"),
                              ),
                              Text(
                                "TravAirport.Inquiries@gmail.com",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    fontFamily: "Lato",
                                    color: Colors.blueGrey[700]),
                              ),
                            ])
                      ]),
                )
              ]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
