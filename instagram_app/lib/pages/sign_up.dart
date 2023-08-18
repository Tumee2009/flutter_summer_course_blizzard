import 'package:flutter/material.dart';
import 'package:instagram_app/component/text_field.dart';
import 'package:instagram_app/pages/home_screen.dart';
import 'package:instagram_app/pages/login_screen.dart';
import 'package:instagram_app/resources/auth_method.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _userController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(flex: 2, child: Container()),
                Text(
                  'Instagram',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 35,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
                TextFieldInput(
                  hintText: 'И-Мэйл',
                  isPassword: false,
                  textEditingController: _emailController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Хэрэглэгчийн нэр',
                  isPassword: false,
                  textEditingController: _userController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг',
                  isPassword: true,
                  textEditingController: _passwordController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг давтах',
                  isPassword: true,
                  textEditingController: _rePasswordController,
                  textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeScreen()));
                    AuthMetods().singUpUser(
                        email: _emailController.text,
                        password: _passwordController.text,
                        username: _userController.text);
                  },
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Text('Бүртгүүлэх'),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                        color: Colors.orange),
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Бүртгэлтэй юу?',
                        style: TextStyle(color: Colors.grey)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Container(
                          width: 75,
                          alignment: Alignment.center,
                          // padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Text('Нэвтрэх',
                              style: TextStyle(color: Colors.orange)),
                          color: Colors.black),
                    ),
                  ],
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
              ],
            )),
      ),
    );
  }
}
