import 'package:flutter/material.dart';
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
        backgroundColor: Colors.grey[400],
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[Text('Im in help')]),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
