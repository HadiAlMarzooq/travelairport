import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travelairport/widgets/flight.dart';
import 'package:travelairport/widgets/loggedin.dart';

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
      backgroundColor: HexColor('#E5E6EC'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RotationTransition(
                    turns: new AlwaysStoppedAnimation(45 / 360),
                    child: const Icon(Icons.airplanemode_on_sharp, size: 70)),
                const Text('TravAirPort',
                    style:
                        TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              ],
            ),
            Container(
                width: double.infinity,
                height: 346,
                color: HexColor('#E5E6EC'),
                alignment: Alignment.bottomCenter,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 350,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: HexColor("44637C"),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 56.3, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
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
                                      height: 40, width: 40),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Join as a Guest",
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 350,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: HexColor("44637C"),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
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
                                  SvgPicture.asset('assets/images/google.svg',
                                      height: 40, width: 40),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "Login with Google",
                                    style: TextStyle(
                                        fontSize: 27,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ])),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
