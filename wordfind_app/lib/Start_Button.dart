import 'package:day_11_flutter/Task_page.dart';
import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  final String text;
  const StartButton(this.text,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 310,
      height: 60,
      decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.centerLeft, end: Alignment.centerRight,
          colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
          borderRadius: BorderRadius.circular(25)),
      child: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const TaskPage()));
      }, child: Text(
        text,
        style: TextStyle(fontFamily: 'Nunito',
        fontSize: 24,
          fontWeight: FontWeight.w700
        ),
      ), style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),)
    );
  }
}
