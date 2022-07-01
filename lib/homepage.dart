// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/datepicker');
                    },
                    child: Text('date picker'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
