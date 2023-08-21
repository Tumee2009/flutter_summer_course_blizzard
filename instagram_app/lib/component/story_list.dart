import 'package:flutter/material.dart';
import 'package:instagram_app/component/watch_story.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<WatchStory> storys = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index){
        return Container(
          color: Colors.yellow,
          child: WatchStory(

          ),
        );
      }, scrollDirection: Axis.vertical, itemCount: storys.length, ),
    );
  }
}
