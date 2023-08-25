import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/component/text_field.dart';
import 'package:lesson_20_flutter/pages/home_screen.dart';
import 'package:lesson_20_flutter/resources/auth_method.dart';

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
    if (result == "success"){
      print('Logged in');
      setState(() {
        _isLoading = false;
      });
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }else{
      print('Not logged in');
    }
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
                        color: Colors.black,
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
                        child: _isLoading ? Center ( child : CircularProgressIndicator(color: Colors.white)) : Text('Нэвтрэх'),
                        decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(4), )),
                            color: Colors.blueAccent),
                      ),
                    ),
                    Flexible(
                      child: Container(),
                      flex: 2,
                    ),
                    GestureDetector(
                    )
                  ],
              ),
          ),
      ),
    );
  }
}
