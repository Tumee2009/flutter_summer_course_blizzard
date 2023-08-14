import 'package:flutter/material.dart';
import 'package:lesson_20_flutter/component/text_field.dart';
import 'package:lesson_20_flutter/resources/auth_method.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _phoneNumberController.dispose();
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
                  'Icodegram',
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
                  hintText: 'Утасны дугаар',
                  isPassword: false, textEditingController: _phoneNumberController,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Хэрэглэгчийн нэр',
                  isPassword: false, textEditingController: _userController,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг',
                  isPassword: true, textEditingController: _passwordController,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(hintText: 'Нууц үг давтах', isPassword: true, textEditingController: _rePasswordController,),
                SizedBox(
                  height: 24,
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                InkWell(
                  onTap: () {},
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
                  height: 12,
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                // Text('Эсвэл', style: TextStyle(
                //   fontWeight: FontWeight.w400,
                //   fontSize: 14,
                // ),),
                // SizedBox(
                //   height: 7,
                // ),
                // Flexible(child: Container(),
                // flex: 4,)
              ],
            )),
      ),
    );
  }
}
