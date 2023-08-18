import 'package:flutter/material.dart';
import 'package:instagram_app/pages/story_screen.dart';

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
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 50, left: 10)),
            Text(
              'Instagram',
              style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 35,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => StoryScreen()));
                      },
                      child: Image(
                          image: AssetImage(
                            'assets/images/add.png',
                          )),
                    ),
                    Text(
                      'Нэмэх',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
