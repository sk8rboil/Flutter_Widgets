// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyTimepicker extends StatefulWidget {
  MyTimepicker({Key? key}) : super(key: key);

  @override
  State<MyTimepicker> createState() => _MyTimepickerState();
}

class _MyTimepickerState extends State<MyTimepicker> {
  TimeOfDay time = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    final hour = time.hour.toString().padLeft(2, '0');
    final minute = time.minute.toString().padLeft(2, '0');

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Time: $hour:$minute'),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? newtime =
                    await showTimePicker(context: context, initialTime: time);
                if (newtime == null) {
                  return;
                }
                setState(() {
                  time = newtime;
                });
              },
              child: Text('Timepicker'),
            ),
          ],
        ),
      ),
    );
  }
}
