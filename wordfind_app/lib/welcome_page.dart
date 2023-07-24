import 'package:day_11_flutter/Gradient_letter.dart';
import 'package:flutter/material.dart';
import 'gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/back1.png'),
                fit: BoxFit.cover)),
        child: Column(
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
                Expanded(child: GradientText('READY?'))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
