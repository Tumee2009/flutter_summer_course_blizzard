import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/component/add_story.dart';
import 'package:instagram_app/component/see_story.dart';

import '../component/story.dart';
import '../component/watch_story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(children: [
          Padding(
              padding: EdgeInsets.only(
            top: 50,
          )),
          Text(
            'iCodeGram',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontSize: 30,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),

          Column(children: [
            AddStory(),
            SizedBox(width: 20,)
          ]),
          WatchStory(),

          SeeStory(),
          SizedBox(
            width: 20,
          ),
          Story(),
          SizedBox(
            width: 20,
          ),
        ]),
      ),
    );
  }
}
