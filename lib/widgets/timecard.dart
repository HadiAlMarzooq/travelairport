import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class timecard extends StatefulWidget {
  final DateTime fl;
  
  const timecard({ Key? key, required this.fl }) : super(key: key);

  @override
  State<timecard> createState() => _timecardState(fl);
}

class _timecardState extends State<timecard> {
    final DateTime fl;
    _timecardState(this.fl);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  width: 300,
                  height: 100,
                  child: Card(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.watch_later_rounded, size: 50,),
                      Center(
                          child: Text(
                        DateFormat.yMMMMEEEEd().format(fl) +
                            '\n' +
                            DateFormat.j().format(fl),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                    ],
                  )),
                );
  }
}