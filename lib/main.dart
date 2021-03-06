import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelairport/widgets/flight.dart';
import 'package:travelairport/widgets/loggedin.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Travel'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('F5F5F5'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/images/logo_airplane.json', height: 80),
                Text('TravAirPort',
                    textScaleFactor: 3.6,
                    style: GoogleFonts.rubik(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: HexColor('32936F')))),
              ],
            ),
            Lottie.asset('assets/images/walking_traveler.json', height: 350),
            Container(
                width: double.infinity,
                height: 250,
                color: HexColor('F5F5F5'),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: HexColor("387D7A"),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 56.3, vertical: 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const loggedin()),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset('assets/images/person.svg',
                                        color: Colors.white,
                                        height: 40,
                                        width: 40),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "Join as a Guest",
                                      textScaleFactor: 1.8,
                                      style: GoogleFonts.arsenal(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: HexColor("387D7A"),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 40, vertical: 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20))),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const loggedin()),
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/google.svg',
                                      height: 40,
                                      width: 40,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Login with Google",
                                      textScaleFactor: 1.8,
                                      style: GoogleFonts.arsenal(
                                          textStyle: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ]),
                )),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
