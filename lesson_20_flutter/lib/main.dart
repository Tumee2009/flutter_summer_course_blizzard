import 'dart:js';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/pages/home_screen.dart';
import 'package:lesson_20_flutter/pages/login_screen.dart';
import 'package:lesson_20_flutter/pages/singup_screen.dart';

import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();

  runApp(MaterialApp(
    home: StreamBuilder(
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          if (snapshot.hasData) {
            return HomeScreen();
          } else if (snapshot.hasError) {
            return Center(
              child: Text('${snapshot.error}'),
            );
          }
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
        return LoginScreen(
        );
      },
      stream: FirebaseAuth.instance.authStateChanges(),
    ),
  ));
}
