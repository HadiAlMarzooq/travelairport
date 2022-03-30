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
    return Center(
      child: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(100),
        minScale: 0.1,
        maxScale: 1.6,
        child: Container(
          child: SvgPicture.asset(
            'assets/images/Terminal-Map-Test-0321.svg',
          ),
        ),
      ),
    );
  }
}
