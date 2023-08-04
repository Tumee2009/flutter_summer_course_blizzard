import 'package:day_11_flutter/Start_Button.dart';
import 'package:day_11_flutter/gradient_text.dart';
import 'package:day_11_flutter/input_field.dart';
import 'package:day_11_flutter/models/user_model.dart';
import 'package:day_11_flutter/task_widget.dart';
import 'package:flutter/material.dart';




UserModel newUser = UserModel(userName: 'Guest', score: 0);

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {

  @override
  Widget build(BuildContext context)
  {
   void _createUser(String value){
     setState(() {
       newUser.userName = value;
     });
   }


    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.of(context).pop();
            newUser = UserModel(userName: 'Guest', score: 0);
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
               Padding(
                padding: EdgeInsets.only(top: 50)
            ),
              Image.asset('assets/images/iCodeGuyHead.png'),
               const Padding(padding: EdgeInsets.only(top: 20)),
              const GradientText('Player Name', 20.0),
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Padding(padding: EdgeInsets.only(top: 20)),
                InputField(onSubmitted: (String value) {_createUser(value);},)
            ],
          ),
        ),
      ),

      floatingActionButton: StartButton('START', newUser),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
// class StartButton extends StatelessWidget {
//   const StartButton(String s, {super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 310,
//       height: 60,
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//           colors: [Color(0xFFE86B02), Color(0xFFFA9541)],
//         ),
//         borderRadius: BorderRadius.circular(25),
//       ),
//       child: StartButton('START'),
//       child: ElevatedButton(onPressed: () {},
//           child: ElevatedButton(style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.transparent,
//               elevation: 0,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25))),
//             onPressed: () {  },
//             child: const Text('START', style: TextStyle(fontFamily: 'Nunito',
//                 fontSize: 24,
//                 fontWeight: FontWeight.w700),),)
//       ),
//     );
//   }
// }
//
//
//
//
