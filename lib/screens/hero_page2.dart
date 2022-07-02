import 'package:flutter/material.dart';

class Myhero2 extends StatelessWidget {
  const Myhero2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Hero(
            tag: 'image1',
            child: Image.network(
                'https://cdn.pixabay.com/photo/2018/02/21/05/17/cat-3169476_960_720.jpg')));
  }
}
