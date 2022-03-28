import 'package:flutter/material.dart';

import 'flight.dart';

class dropdownlist extends StatefulWidget {
  const dropdownlist({Key? key}) : super(key: key);

  @override
  State<dropdownlist> createState() => _dropdownlistState();
}

class _dropdownlistState extends State<dropdownlist> {
  @override
  String dropdownValue = 'XY831';
  List<flight> availableflight = <flight>[
    flight('XY831', 12, DateTime(2022, 4, 3)),
    flight('SV1129', 3, DateTime(2022, 4, 2)),
    flight('EK2822', 9, DateTime(2022, 4, 1))
  ];

  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Select Your Flight Number',
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        DropdownButton<String>(
          isExpanded: true,
          dropdownColor: Colors.white,
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward),
          elevation: 16,
          style: Theme.of(context).textTheme.headline6,
          underline: Container(
            height: 4,
            color: Colors.white,
          ),
          onChanged: (String? newValue) {
            setState(() {
              dropdownValue = newValue!;
            });
          },
          items: <String>[
            flight('XY831', 12, DateTime(2022, 4, 3)).getFlightName(),
            flight('SV1129', 3, DateTime(2022, 4, 2)).getFlightName(),
            flight('EK2822', 9, DateTime(2022, 4, 1)).getFlightName()
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Center(child: Text(value)),
            );
          }).toList(),
        ),
      ],
    );
  }
}
