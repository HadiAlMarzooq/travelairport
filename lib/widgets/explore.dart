import 'package:flutter/material.dart';
import 'package:travelairport/widgets/help.dart';
import 'package:travelairport/widgets/explore.dart';
import 'package:travelairport/widgets/availableflight.dart';

class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('explore')]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
