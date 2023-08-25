import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lesson_20_flutter/component/text_field.dart';
import 'package:lesson_20_flutter/resources/auth_method.dart';
import 'package:lesson_20_flutter/utils/utils.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  Uint8List? _image;

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
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
                TextFieldInput(
                  hintText: 'И-Мэйл',
                  isPassword: false,
                  textEditingController: _emailController, textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Хэрэглэгчийн нэр',
                  isPassword: false,
                  textEditingController: _userController, textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг',
                  isPassword: true,
                  textEditingController: _passwordController, textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                TextFieldInput(
                  hintText: 'Нууц үг давтах',
                  isPassword: true,
                  textEditingController: _rePasswordController, textInputType: TextInputType.text,
                ),
                SizedBox(
                  height: 24,
                ),
                Flexible(
                  child: Container(),
                  flex: 2,
                ),
                InkWell(
                  onTap: () {
                    AuthMetods().singUpUser(
                        email: _emailController.text,
                        password: _passwordController.text,
                        username: _userController.text, file: null);
                    Uint8List? _image;
                    Stack(
                      children: [
                        _image != null? CircleAvatar(
                        radius: 64,
                          backgroundImage: MemoryImage(_image!),
                    ) :  CircleAvatar(radius: 64,
                    backgroundImage: NetworkImage("https://toppng.com/uploads/preview/instagram-default-profile-picture-11562973083brycehrmyv.png"),
                          child: Positioned(child: IconButton(icon: Icon(Icons.add_a_photo), onPressed: selectImage,), bottom: 10, left: 80,),
                    ),
                      ],
                    );
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
                  height: 12,
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
 void selectImage() async {
   Uint8List image = await
       pickImage(ImageSource.gallery,
       );
   setState(() {
     _image = image;
   });
  }
}
