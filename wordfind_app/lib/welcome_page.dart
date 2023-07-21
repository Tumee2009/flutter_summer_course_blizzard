import 'package:day_11_flutter/Gradient_letter.dart';
import 'package:flutter/material.dart';
import 'gradient_text.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          GradientText('GAME', 31.6),
          GradientLetter('W'),
          GradientLetter('O'),
          GradientLetter('R'),
          GradientLetter('D')
        ],
      ),
    );
  }
}
