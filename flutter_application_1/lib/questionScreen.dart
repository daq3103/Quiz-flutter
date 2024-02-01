import 'package:flutter/material.dart';
import 'package:flutter_application_1/changeScreen.dart';
import 'package:flutter_application_1/button.dart';
import 'package:flutter_application_1/data/questions.dart';
import 'package:flutter_application_1/model/model.dart';

class questionScreen extends StatefulWidget {
  const questionScreen({required this.selectAnswer, super.key});
  final Function selectAnswer;
  @override
  State<questionScreen> createState() => _questionScreenState();
}

class _questionScreenState extends State<questionScreen> {
  var index = 0;
  void changeQuestion(String choseeAnswer) {
    setState(() {
      widget.selectAnswer(choseeAnswer);
      index++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // gọi đến câu hỏi thứ index
    final currentQuestion = questions[index];
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.question,
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 100,
            ),
            ...currentQuestion.answer.map((answer) {
              return buttonScreen(
                  answerText: answer,
                  ontap: () {
                    // khi click vào sẽ chạy func lưu đáp án và truyền vào trong list [] xong chuyển qua câu tiếp theo
                    changeQuestion(answer);
                  });
            }
            )
          ],
        ),
      ),
    );
  }
}
