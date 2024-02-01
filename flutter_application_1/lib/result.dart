import 'package:flutter/material.dart';

class ResultQuiz extends StatefulWidget {
  const ResultQuiz({required this.choseAnswers, Key? key}) : super(key: key);
  final List<String> choseAnswers;

  @override
  State<ResultQuiz> createState() => _ResultQuizState();
}

class _ResultQuizState extends State<ResultQuiz> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Answer selected',
            style: TextStyle(color: Color.fromARGB(255, 17, 1, 1), fontSize: 50),
          ),
          const SizedBox(height: 50),
          Column(
            children: widget.choseAnswers.map((answer) {
              return Text(
                answer,
                style: const TextStyle(color: Colors.white, fontSize: 10),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
