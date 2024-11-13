// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xapp(),
    );
  }
}

class Xapp extends StatefulWidget {
  @override
  State<Xapp> createState() => _XappState();
}

class _XappState extends State<Xapp> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Abderrahmane bari",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: Colors.amber[600],
      body: Container(
          child: Column(
        children: [
          SwitchListTile(
              value: status,
              onChanged: (val) {
                setState(() {
                  status = val;
                });
              })
        ],
      )),
    );
  }
}
