import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
        backgroundColor: HexColor('F5F5F5'),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
              Widget>[
            const Text(
              "FAQs",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  fontFamily: "Lato"),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 350,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/question-mark-sign.svg',
                          height: 17, width: 17, color: HexColor("387D7A")),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        "How will TravAirport help me?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Lato"),
                      ),
                    ],
                  ),
                  Text(
                    "TravAirport will help you arrange your time in the airport. It can guide you to your gate or any other facility in the airport you are in. It notifies you whenever it is necessary.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: HexColor("395e66")),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/images/question-mark-sign.svg',
                          height: 17, width: 17, color: HexColor("387D7A")),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        "How can i change the flight?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: "Lato"),
                      ),
                    ],
                  ),
                  Text(
                    "You can do this by going back to the Choose Flight No. page using the arrow at the top left.",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                        color: HexColor("395e66")),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.attach_email, color: HexColor("395e66"), size: 60),
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
                      RichText(
                          text: TextSpan(
                              text: "TravAirport.Inquiries@gmail.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: "Lato",
                                  color: HexColor("395e66")),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Clipboard.setData(const ClipboardData(
                                      text: "TravAirport.Inquiries@gmail.com"));
                                }))
                    ])
              ]),
            )
          ]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
