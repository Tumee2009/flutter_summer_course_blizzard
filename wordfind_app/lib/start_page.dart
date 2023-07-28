import 'package:day_11_flutter/gradient_text.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: SizedBox(
          height: 50,
          child: Image.asset('assets/images/game_logo.png'),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/back2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child:  Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50)
            ),
              Image.asset('assets/images/iCodeGuyHead.png'),
               const Padding(padding: EdgeInsets.only(top: 20)),
              const GradientText('Player Name', 20.0),
              const Padding(padding: EdgeInsets.only(top: 20)),
            ],
          ),
        ),
      ),
      floatingActionButton: const StartButton('Start'),
    );
  }
}
class StartButton extends StatelessWidget {
  const StartButton(String s, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: ElevatedButton(onPressed: () {},
          child: ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25))),
            onPressed: () {  },
            child: const Text('START', style: TextStyle(fontFamily: 'Nunito',
                fontSize: 24,
                fontWeight: FontWeight.w700),),)
      ),
    );
  }
}


