import 'models/user_model.dart';
import 'package:flutter/material.dart';
import 'task_page.dart';

class StartButton extends StatelessWidget {
  final UserModel newUser;

  const StartButton(this.newUser, {super.key});

  @override
  Widget build(BuildContext context) {
    return newUser.userName == 'Guest'
        ? Container()
        : Container(
            alignment: Alignment.center,
            width: 310,
            height: 60,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
                borderRadius: BorderRadius.circular(25)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TaskPage(newUser)));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: const Text(
                'Start',
                style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ));
  }
}
