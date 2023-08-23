import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScrenState();
  }
}

class _QuestionsScrenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The Question..."),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: "Answer 1",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "Answer 2",
            onTap: () {},
          ),
          AnswerButton(
            answerText: "Answer 3",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
