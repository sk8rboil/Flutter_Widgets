// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/homepage.dart';
import 'package:flutter_basic_widgets/screens/bottomnavigation.dart';
import 'package:flutter_basic_widgets/screens/hero_page1.dart';
import 'package:flutter_basic_widgets/screens/hero_page2.dart';
import 'package:flutter_basic_widgets/widgets/datepicker.dart';
import 'package:flutter_basic_widgets/widgets/daterange.dart';
import 'package:flutter_basic_widgets/widgets/dialog.dart';
import 'package:flutter_basic_widgets/widgets/expansion_tile.dart';
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
        primarySwatch: Colors.blueGrey,
        appBarTheme: AppBarTheme(color: Colors.brown.shade800),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/homepage': (context) => MyHomePage(title: ''),
        '/datepicker': (context) => MydatePicker(),
        '/timepicker': (context) => MyTimepicker(),
        '/daterange': (context) => Mydaterange(),
        '/hero1': (context) => Myhero1(),
        '/hero2': (context) => Myhero2(),
        '/dialog': (context) => MyDialog(),
        '/expansiontile': (context) => MyExpansionTile(),
        '/bottomnav': (context) => MyBottomNavigation(),
      },
    );
  }
}
