import 'package:flutter/material.dart';

class loggedin extends StatefulWidget {
  const loggedin({Key? key}) : super(key: key);

  @override
  State<loggedin> createState() => _loggedinState();
}

class _loggedinState extends State<loggedin> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.grey[400],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            ]
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
