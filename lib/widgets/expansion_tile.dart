// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class MyExpansionTile extends StatelessWidget {
  const MyExpansionTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          ExpansionTile(
            onExpansionChanged: (isExpanded) {},
            title: Text('data'),
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              ListTile(
                title: Text('tile1'),
                onTap: () {
                  print('tile1');
                },
              ),
              ListTile(
                title: Text('tile2'),
                onTap: () {
                  print('tile2');
                },
              ),
              ListTile(
                title: Text('tile3'),
                onTap: () {
                  print('tile3');
                },
              ),
              ListTile(
                title: Text('tile4'),
                onTap: () {
                  print('tile4');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
