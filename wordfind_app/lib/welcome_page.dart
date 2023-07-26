import 'dart:ffi';

import 'package:day_11_flutter/Gradient_letter.dart';
import 'package:flutter/material.dart';
import 'gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back1.png'),
                fit: BoxFit.cover)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 200),
            ),
            Expanded(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GradientLetter('W'),
                    GradientLetter('O'),
                    GradientLetter('R'),
                    GradientLetter('D'),
                  ],
                ),
                GradientText('GAME', 31.6),
                Image(image: AssetImage('assets/images/iCodeGuy.png')),
                Expanded(child: GradientText('READY', 25.0))
              ],
            )),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 310,
        height: 60,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
            borderRadius: BorderRadius.circular(25)),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
          child: const Text('PLAY', style: TextStyle(fontFamily: 'Nunito', fontSize: 24, fontWeight: FontWeight.w700),),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
