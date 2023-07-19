import 'package:flutter/material.dart';

void main() {
  print('Day 11 Flutter application');

  const MaterialApp myApp = MaterialApp(
      home: Center(
    child: Text(
      'Hello Blizzard',
      style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 30),
    ),
  ));
  MaterialApp myNextApp = MaterialApp(
      title: 'Word Find Game',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: const Scaffold(
          body: Center(
        child: Text(
          'Hello Blizzard',
          style: TextStyle(color: Color(0xffb92eFF), fontSize: 30),
        ),
      )));
  final MyNiceApp temuujin = MyNiceApp();

  runApp(temuujin);
}

class MyNiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Nice App',
      theme: ThemeData(fontFamily: 'Nunito'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Nice App'),
        ),
        body: Container(
          child: Center(
            child: Text('Hello Blizzard',
                style: TextStyle(color: Color(0xff0e41c0), fontSize: 30)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Image.asset(
              'assets/car.png',
              width: 100,
            ),
            onPressed: () {
              print('hahhaahaha');
            }),
      ),
    );
  }
}
