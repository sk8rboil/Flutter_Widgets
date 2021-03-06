// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_basic_widgets/screens/hero_page2.dart';

class Myhero1 extends StatelessWidget {
  const Myhero1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => Myhero2()));
        },
        child: Column(
          children: <Widget>[
            Hero(
              tag: 'image1',
              child: SizedBox(
                width: 300,
                child: Image.network(
                    'https://cdn.pixabay.com/photo/2018/02/21/05/17/cat-3169476_960_720.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
