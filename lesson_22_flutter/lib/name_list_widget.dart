import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> names = ['pummel',
    'pummel','pummel',
    'pummel','pummel',
    'pummel','pummel',
    'pummel','pummel',
    'pummel','pororo',
    'pummel','pummel',
    'pummel','pummel',
    'pummel','pummel',
    'pummel','pummel',
    'pummel','pummel',
    'pummel','pummel',
    'pummel','pummel',];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index){
        return Container(
          height: 50,
          width: 50,
          color: Colors.yellow,
          child: Text(names[index]),
        );
      }, scrollDirection: Axis.vertical, itemCount: names.length, ),
    );
  }
}
