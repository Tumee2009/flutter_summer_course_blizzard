import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Padding(padding: EdgeInsets.only(top: 160)),
          Text(
            'iCodegram',
            style: TextStyle(
              fontFamily: 'Lobster',
              fontWeight: FontWeight.w400,
              fontSize: 50,
              color: Colors.white,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 70)),
          TextField(
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 25,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 12,
                ),
                filled: true,
                fillColor: Colors.black,
                hintText: "Нэвтрэх нэр",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.zero,),
                    borderSide: BorderSide(width: 15, style: BorderStyle.none, ),),
              )),
          Stack(
            children: [
              Row(
                children: [
                  // Padding(padding: EdgeInsets.only(top: 500)),
                  Text("Шинэ хэрэглэгч үү?",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,

                      )),
                  Text(
                    "Бүртгүүлэх",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.deepOrange,
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 27.5)),
          TextField(
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 25,
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 12,
                ),
                filled: true,
                fillColor: Colors.black,
                hintText: "Нууц үг",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.zero, ),
                    borderSide: BorderSide(width: 15, style: BorderStyle.none, )),
              )),
        ],
      ),
    );
  }
}
