import 'package:day_11_flutter/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Word Find Game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: Scaffold(
      body: const Center(child: WelcomePage()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          width: 310,
          height: 60,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFE86B02),
                  Color(0xFFFA9541),
                ],
              ),
              borderRadius: BorderRadius.circular(25)),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                )),
            child: const Text(
              'PLAY',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    ),
    //home: const WelcomePage(),
  ));
}
