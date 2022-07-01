// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class MydatePicker extends StatefulWidget {
  MydatePicker({Key? key}) : super(key: key);

  @override
  State<MydatePicker> createState() => _MydatePickerState();
}

class _MydatePickerState extends State<MydatePicker> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DATE PICKER'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
            Text(
              "date: ${date.day}/${date.month}/${date.year}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  DateTime? newdate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(2100),
                  );

                  if (newdate == null) {
                    return;
                  }
                  setState(() {
                    date = newdate;
                  });
                },
                child: Text("Pick Date")),
          ],
        ),
      ),
    );
  }
}
