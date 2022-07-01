// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Myconstant {
  Container mybuttoncontainer(title, context, myroute) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, myroute);
        },
        child: Text(title),
      ),
    );
  }
}
