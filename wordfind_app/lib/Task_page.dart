import 'package:day_11_flutter/data/questions.dart';
import 'package:day_11_flutter/start_page.dart';
import 'package:day_11_flutter/task_widget.dart';
import 'package:day_11_flutter/models/user_model.dart';
import 'package:flutter/material.dart';

import 'models/Task_model.dart';

class TaskPage extends StatefulWidget {
  const TaskPage(UserModel newUser, {super.key, required this.user});
  final UserModel user;

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  GlobalKey<TaskWidgetState> globalKey = GlobalKey();
  late List<TaskModel> listQuestions;
  late UserModel user;

  @override
  void initState() {

    listQuestions = questions;
    super.initState();
    user = widget.user;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF5F2),
      appBar: AppBar(
        leading: IconButton(
          icon: Image.asset('assets/images/arrow_back.png'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          newUser.userName,
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFFE86B02),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded( child: LayoutBuilder(builder: (context, constraints)=> Container(
              height: 300,
              child: TaskWidget(
                constraints.biggest,
                listQuestions.map((question) => question.clone()).toList(), Key: globalKey,

              ),
            ))),
            Expanded(
                child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.only(top: 10),
              color: Colors.white,
              child: Center(
                child: Container(
                  width: 150,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Color(0xFFE86B02), Color(0xFFFA9541)]),
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                    onPressed: () {
                      globalKey.currentState?.generatePuzzle(loop: listQuestions.map((question) => question.clone()).toList(),);
                    },
                    child: Text(
                      'Reload',
                      style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
