import 'package:flutter/material.dart';

import '../pages/story_screen.dart';

class SeeStory extends StatefulWidget {
  const SeeStory({super.key});

  @override
  State<SeeStory> createState() => _SeeStoryState();
}

class _SeeStoryState extends State<SeeStory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 94,
      width: 75,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => StoryScreen()));
            },
            child: Container(
              width: 75,
              height: 75,
              child: CircleAvatar(
                maxRadius: 500,
               backgroundImage: NetworkImage(
                      'https://s3-alpha-sig.figma.com/img/0f59/b34e/0b9078fbb31affc076266d76df94cd14?Expires=1693785600&Signature=UnSHec-86gu77tMYtJT-nm4wcnUSILpvY-PwyrwGXK72e8ixIwsxBJBMvj9PksxjKn0WeTWTgczBlw5apLyEAsyaPod2lfqsnEUivHpN4TPskw0qHw6l7xfK3xIZyhs4nOpfiR4K5Q4m8ehTGqa4txSaggunADBW9xgijK6wjvhVe3gvnUIF2RmffxKPUzhkd6c8n-1Eq9M6MfjDMMSIxaALDSn6fy2lhf~-VMw-aLEN7XJazsdpVSoJviGyrzRArxIVH6-8sCn7ej5rPti7Oi3nNXksRip9oSIZ42N3DsqkaGkq4OVoyxvAlWLGdAxtnt7Gx3sPzlfN4YBi3Q-7jA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4',
                    ),
              ),
            ),
          ),
          Text(
            'Сарнай',
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
