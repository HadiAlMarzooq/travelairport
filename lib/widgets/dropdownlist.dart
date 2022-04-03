import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'flight.dart';
import 'loggedin.dart';
import 'flightview.dart';

class dropdownlist extends StatefulWidget {
  const dropdownlist({Key? key}) : super(key: key);

  @override
  State<dropdownlist> createState() => _dropdownlistState();
}

class _dropdownlistState extends State<dropdownlist> {
  @override
  List<flight> availableflight = <flight>[
    flight('XY831', 12, DateTime(2022, 4, 3)),
    flight('SV1129', 3, DateTime(2022, 4, 2)),
    flight('EK2822', 9, DateTime(2022, 4, 1, 3)),
    flight('AV282', 9, DateTime(2022, 4, 1, 2))
  ];
  String dropdownValue = 'XY831';

  List<String> getStrings() {
    List<String> list = [];
    for (flight element in availableflight) {
      list.add(element.flightNumber);
    }
    return list;
  }

  int getIndexOfFlight(String fn) {
    for (flight element in availableflight) {
      if (element.flightNumber == (fn)) return availableflight.indexOf(element);
    }
    return -1;
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Select Your Flight Number',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(width: 13),
            Lottie.asset(
              'assets/images/animated_airplane.json',
              height: 40,
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Container(
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1.0, style: BorderStyle.solid),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          ),
          child: DropdownButton<String>(
            isExpanded: true,
            dropdownColor: Colors.white,
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: Theme.of(context).textTheme.headline6,
            underline: Container(
              height: 4,
              color: Colors.transparent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => flightview(
                          Flight: availableflight
                              .elementAt(getIndexOfFlight(newValue)))),
                );
              });
            },
            items: getStrings().map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Center(child: Text(value)),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
