import 'package:flutter/material.dart';
import 'package:instagram_app/component/story_list.dart';
import 'package:instagram_app/pages/login_screen.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
      home: LoginScreen(),
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color.fromRGBO(0, 0, 0, 1),
        textTheme: Typography().white.apply(fontFamily: 'Rubik'),
      )));
}
