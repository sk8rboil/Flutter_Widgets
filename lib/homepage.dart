// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';

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
            alignment: WrapAlignment.spaceBetween,
            direction: Axis.horizontal,
            spacing: 10,
            runSpacing: 20,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('datepicker'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('timepicker'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('data1'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('data1'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('data1'),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('data1'),
                ),
              ),
            ],
          ),
        ],
      ),

// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
