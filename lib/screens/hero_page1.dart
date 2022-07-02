// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Myhero1 extends StatelessWidget {
  const Myhero1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        child: Column(
          children: <Widget>[
            Image.network('src'),
          ],
        ),
      ),
    );
  }
}
