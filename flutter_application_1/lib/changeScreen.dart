import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/startScreen.dart';
import 'package:flutter_application_1/questionScreen.dart';
import 'package:flutter_application_1/result.dart';

class changeScreen extends StatefulWidget {
  const changeScreen({super.key});

  @override
  State<changeScreen> createState() => _changeScreenState();
}

class _changeScreenState extends State<changeScreen> {
  var changee = 'start';
  // hàm chuyển đổi sang màn câu hỏi
  void changeState() {
    setState(() {
      changee = 'questionScreen';
    });
  }

  //lưu đáp án
  List<String> choseAnswer = [];
  void selectAnswer(answer) {
    choseAnswer.add(answer);
    if (choseAnswer.length == questions.length) {
      setState(() {
        changee = 'result';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenState = startScreen(StartQuiz: changeState);
    if (changee == 'questionScreen') {
      screenState = questionScreen(
        selectAnswer: selectAnswer,
      );
    }
    if (changee == 'result') {
      screenState = ResultQuiz(choseAnswers: choseAnswer,);
    }
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 90, 161),
        body: screenState,
      ),
    );
  }
}
