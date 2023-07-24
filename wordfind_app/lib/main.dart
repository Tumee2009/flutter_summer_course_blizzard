import 'package:day_11_flutter/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Word Find Game',
    theme: ThemeData(fontFamily: 'Ribeye'),
    home: Scaffold(
        body: Center(child: WelcomePage()),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Container(
            width: 310,
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFFE86B02),
                    Color(0xFFFA9541),
                  ],
                ),
                borderRadius: BorderRadius.circular(25)),
            child: ElevatedButton(onPressed: (){}, child: )
            ),
          ),
        )),
  ));
}
