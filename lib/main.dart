import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:travelairport/widgets/flight.dart';

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
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: double.infinity,
                height: 346,
                color: HexColor('#E5E6EC'),
                alignment: Alignment.bottomCenter,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RotationTransition(
                              turns: new AlwaysStoppedAnimation(45 / 360),
                              child: const Icon(Icons.airplanemode_on_sharp,
                                  size: 70)),
                          const Text('TravAirPort',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: HexColor("44637C"),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 56.3, vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: const Text(
                              "Join as a Guest",
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: HexColor("44637C"),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 40, vertical: 10),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            onPressed: () {},
                            child: const Text(
                              "Login with Google",
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),

                      // ElevatedButton.icon(
                      //     icon: const Icon(null),
                      //     onPressed: null,
                      //     label: const Text('Join as a Guest',
                      //         style: TextStyle(
                      //             fontSize: 30, fontWeight: FontWeight.bold))),
                      // ElevatedButton.icon(
                      //     icon: const Icon(Icons.arrow_forward_ios_rounded),
                      //     onPressed: null,
                      //     label: const Text('Sign up with a google account',
                      //         style: TextStyle(
                      //             fontSize: 20, fontWeight: FontWeight.bold)))
                    ])),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
