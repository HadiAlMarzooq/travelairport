import 'package:flutter/material.dart';
import 'package:travelairport/widgets/help.dart';
import 'package:travelairport/widgets/explore.dart';
import 'package:travelairport/widgets/availableflight.dart';

class loggedin extends StatefulWidget {
  const loggedin({Key? key}) : super(key: key);

  @override
  State<loggedin> createState() => _loggedinState();
}

class _loggedinState extends State<loggedin> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgetOptions = <Widget>[
      explore(),
      availableflight(),
      help()
    ];

    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_rounded),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.flight_rounded),
              label: 'Available Flights',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.help_rounded),
              label: 'Help',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),

        backgroundColor: Colors.grey[400],
        body: Center(
          child: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
