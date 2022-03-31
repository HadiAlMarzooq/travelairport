import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'flight.dart';

class percentage extends StatefulWidget {
  final flight fl;
  const percentage({Key? key, required this.fl}) : super(key: key);

  @override
  State<percentage> createState() => _percentageState(fl);
}

class _percentageState extends State<percentage> {
  final flight fl;
  _percentageState(this.fl);
  @override
  String calculateFlDiff() {
    return (fl.flightTime.difference(DateTime.now()).inHours.toString());
  }

  double percent() {
    if (int.parse(calculateFlDiff()) > 3)
      return 1;
    else
      return ((int.parse(calculateFlDiff()) / 300) * 100);
  }

  progressColor() {
    if (percent() == 1) {
      return Colors.green[700];
    } else if (percent() > 0.50) {
      return Colors.yellow[700];
    } else
      return Colors.red[700];
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: LinearPercentIndicator(
        width: MediaQuery.of(context).size.width - 50,
        animation: true,
        lineHeight: 20.0,
        animationDuration: 2000,
        percent: percent(),
        linearStrokeCap: LinearStrokeCap.roundAll,
        progressColor: progressColor(),
        barRadius: const Radius.circular(10),
      ),
    );
  }
}
