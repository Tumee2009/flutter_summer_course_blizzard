import 'package:flutter/material.dart';
import 'package:instagram_app/component/text_field.dart';
import 'package:instagram_app/pages/home_screen.dart';
import 'package:instagram_app/pages/sign_up.dart';
import 'package:instagram_app/resources/auth_method.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isLoading = false;


  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }


  void loginUser() async {
    String result = await AuthMetods().loginUser(email: emailController.text,
      password: passwordController.text,
    );

    print(result);
    if (result == "success") {
      print('Logged in');
      setState(() {
        _isLoading = false;
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      print('Not logged in');
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
              ),
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
                textEditingController: emailController,
                hintText: 'Enter your email',
                isPassword: false,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              TextFieldInput(
                hintText: 'Enter your password',
                isPassword: true,
                textEditingController: passwordController,
                textInputType: TextInputType.text,
              ),
              SizedBox(
                height: 24,
              ),
              InkWell(
                onTap: loginUser,
                child: Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 12,),
                    child: _isLoading
                        ? Center(
                        child: CircularProgressIndicator(color: Colors.white))
                        : Text('Нэвтрэх'),
                    color: Colors.orange),
              ),SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Шинэ хэрэглэгч үү?', style: TextStyle(color: Colors.grey)),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Container(
                        width: 75,
                        alignment: Alignment.center,
                        // padding: const EdgeInsets.symmetric(vertical: 12),
                        child: _isLoading
                            ? Center(
                            child: CircularProgressIndicator(color: Colors.white, ))
                            : Text('Бүртгүүлэх',style: TextStyle(color: Colors.orange)),
                        color: Colors.black),
                  ),
                ],
              ),
              Flexible(
                child: Container(),
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
