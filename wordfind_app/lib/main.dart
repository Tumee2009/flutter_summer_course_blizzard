import 'package:day_11_flutter/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Word Find Game',
      theme: ThemeData(fontFamily: 'Ribeye'),
      home: const Scaffold(
        body: Center(child: WelcomePage()),
      ),
    ),
  );
}
