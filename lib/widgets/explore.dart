import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
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
      home: FittedBox(
        fit: BoxFit.fitHeight,
        child: InteractiveViewer(
          boundaryMargin: const EdgeInsets.symmetric(horizontal: 650),
          minScale: 1.0,
          maxScale: 3.0,
          child: SvgPicture.asset(
            'assets/images/Terminal-Map-Test-0321.svg',
          ),
        ),
      ),
    );
  }
}
