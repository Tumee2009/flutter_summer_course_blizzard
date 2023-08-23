import 'package:flutter/material.dart';
import 'package:instagram_app/component/watch_story.dart';

class StoryList extends StatefulWidget {
  const StoryList({super.key});

  @override
  State<StoryList> createState() => _StoryListState();
}

class _StoryListState extends State<StoryList> {
  List<String> storys = ['WatchStory', 'SeeStory'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WatchStory(),

    );
  }
}
