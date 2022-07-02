// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Myconstant {
  Container mybuttoncontainer(title, context, myroute) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.3,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, myroute);
        },
        child: Text(title),
      ),
    );
  }
}
