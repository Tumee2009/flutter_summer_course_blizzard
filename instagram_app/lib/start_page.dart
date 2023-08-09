import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(padding: EdgeInsets.only(bottom: 200)),
          Text(
            'iCodegram',
            style: TextStyle(
                fontFamily: 'Lobster',
                fontWeight: FontWeight.w400,
                fontSize: 35,
                color: Colors.white
            ),
          ),
          Stack(
            children: [
              Row(
                children: [
                Padding(padding: EdgeInsets.only(top: 160)),
                  Text(
                    "Шинэ хэрэглэгч үү?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    )
                  ),
                  Text("Бүртгүүлэх", style: TextStyle(
                    fontSize: 15,
                    color: Colors.deepOrange,
                  ),)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}



