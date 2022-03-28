import 'package:flutter/material.dart';
import 'package:travelairport/widgets/help.dart';
import 'package:travelairport/widgets/availableflight.dart';
import 'package:travelairport/widgets/availableflight.dart';

class availableflight extends StatefulWidget {
  const availableflight({Key? key}) : super(key: key);

  @override
  State<availableflight> createState() => _availableflightState();
}

class _availableflightState extends State<availableflight> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('Im in availableflight')]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
