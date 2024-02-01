import 'package:flutter/material.dart';

class startScreen extends StatelessWidget {
  const startScreen({required this.StartQuiz, super.key});
  final   Function() StartQuiz;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 90, 161),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/quiz-logo.png',
                width: 200,
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () {
                    StartQuiz();
                  },
                  child: const Text(
                    'start quiz',
                    style: TextStyle(fontSize: 24, color: Colors.pinkAccent),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
