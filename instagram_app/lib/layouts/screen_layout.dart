import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/pages/follow_page.dart';
import 'package:instagram_app/pages/home_screen.dart';

import '../pages/story_screen.dart';

class ScreenLayout extends StatefulWidget {
  const ScreenLayout({super.key});

  @override
  State<ScreenLayout> createState() => _ScreenLayoutState();
}

class _ScreenLayoutState extends State<ScreenLayout> {
  int _page = 0;

  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: SafeArea(
          child: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: onPageChanged,
        children: [
          HomeScreen(),
          StoryScreen(),
          FollowPage(),
        ],
      )),
      bottomNavigationBar: CupertinoTabBar(
        onTap: navigationTapped,
        items: [
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: '',
              icon: Icon(Icons.home,
                  color: _page == 0 ? Colors.blue : Colors.black)),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: '',
              icon: Icon(
                Icons.add_box_outlined,
                color: _page == 1 ? Colors.blue : Colors.black,
              )),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: '',
              icon: Icon(
                Icons.account_circle_sharp,
                color: _page == 2 ? Colors.blue : Colors.black,
              ))
        ],
      ),
    );
  }
}
