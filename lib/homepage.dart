// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Wrap(
            alignment: WrapAlignment.spaceAround,
            spacing: 10,
            runSpacing: 20,
            children: <Widget>[
              Myconstant()
                  .mybuttoncontainer('Datepicker', context, '/datepicker'),
              Myconstant()
                  .mybuttoncontainer('Timepicker', context, '/timepicker'),
              Myconstant()
                  .mybuttoncontainer('date range', context, '/daterange'),
              Myconstant().mybuttoncontainer('hero', context, '/hero1'),
              Myconstant().mybuttoncontainer('dialog', context, '/dialog'),
              Myconstant().mybuttoncontainer(
                  'expansiontile', context, '/expansiontile'),
              Myconstant()
                  .mybuttoncontainer('bottomnav', context, '/bottomnav'),
            ],
          ),
        ],
      ),

// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
