import 'package:flutter/material.dart';

import '../pages/story_screen.dart';

class WatchStory extends StatefulWidget {
  const WatchStory({super.key});

  @override
  State<WatchStory> createState() => _WatchStoryState();
}

class _WatchStoryState extends State<WatchStory> {
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 94,
      width: 75,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StoryScreen()));
            },
            child: ClipOval(
              child: Image(
                  image: AssetImage(
                    'assets/images/men.png',
                  )),
            ),
          ),
          Text('Төгөлдөр',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}


