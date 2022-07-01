// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/homepage.dart';
import 'package:flutter_basic_widgets/widgets/datepicker.dart';
import 'package:flutter_basic_widgets/widgets/timepicker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: AppBarTheme(color: Colors.brown.shade500),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/homepage': (context) => MyHomePage(title: ''),
        '/datepicker': (context) => MydatePicker(),
        '/timepicker': (context) => MyTimepicker(),
      },
    );
  }
}
