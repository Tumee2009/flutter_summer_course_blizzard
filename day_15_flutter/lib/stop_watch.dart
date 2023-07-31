import 'package:flutter/material.dart';
import 'dart:async';

class StopWatch extends StatefulWidget {
  const StopWatch({super.key});

  @override
  State<StopWatch> createState() => _StopWatchState();
}

class _StopWatchState extends State<StopWatch> {
  int seconds = 0;
  bool _isTicking = true;
  late Timer timer;

  // @override
  // void initState() {
  //   super.initState();
  //   timer = Timer.periodic(Duration(seconds: 1), _onTick);
  // }

  void _onTick(Timer timer) {
    setState(() {
      seconds++;
    });
  }

  void _startTimer(){
    timer = Timer.periodic(Duration(seconds: 1), _onTick);
    setState(() {
      _isTicking = false;
    });
  }

  void _stopTimer(){
    timer.cancel();
    setState(() {
      _isTicking = true;
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Stopwatch',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                '$seconds seconds',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: _isTicking ?  _startTimer: null ,
                     style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
                    child: const Text('Start', style: TextStyle(color: Colors.white,), ),
                    ),
                SizedBox(width: 20,),
                TextButton(onPressed: _isTicking ?  null : _stopTimer ,
                     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                    child: Text('Stop', style: TextStyle(color: Colors.white),))
              ],
            ),
          ],
        ));
  }
}
