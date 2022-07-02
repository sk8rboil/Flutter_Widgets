// ignore_for_file: unused_local_variable, prefer_const_constructors

import 'package:flutter/material.dart';

class Mydaterange extends StatefulWidget {
  const Mydaterange({Key? key}) : super(key: key);

  @override
  State<Mydaterange> createState() => _MydaterangeState();
}

DateTimeRange datetimerange =
    DateTimeRange(start: DateTime.now(), end: DateTime.now());

class _MydaterangeState extends State<Mydaterange> {
  @override
  Widget build(BuildContext context) {
    final start = datetimerange.start;
    final end = datetimerange.end;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'DATE RANGE',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      pickDateRange();
                    },
                    child: Text(
                        '${start.day}/${start.month}/${start.year} - ${end.day}/${end.month}/${end.year}'),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future pickDateRange() async {
    DateTimeRange? newdaterange = await showDateRangePicker(
        context: context,
        initialDateRange: datetimerange,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100));

    if (newdaterange == null) {
      return;
    }
    setState(() {
      datetimerange = newdaterange;
    });
  }
}
