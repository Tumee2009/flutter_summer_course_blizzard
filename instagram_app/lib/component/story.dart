import 'package:flutter/material.dart';

import '../pages/story_screen.dart';

class Story extends StatefulWidget {
  const Story({super.key});

  @override
  State<Story> createState() => _AddStoryState();
}

class _AddStoryState extends State<Story> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      height: 94,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StoryScreen()));
            },
            child: ClipOval(child: Image(
                image: AssetImage(
                  'assets/images/men.png',
                )),
            ),
           ),
          Text(
            'Ханхүү',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
