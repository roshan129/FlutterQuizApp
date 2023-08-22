import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 249, 249, 249),
          ),
          /* Opacity(
            opacity: 0.6,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ), */
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Learn Flutter the fun way',
            style: TextStyle(
                color: Color.fromARGB(255, 227, 213, 213), fontSize: 24),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text('Start Quiz'),
            icon: const Icon(Icons.arrow_right_alt),
          )
        ],
      ),
    );
  }
}
