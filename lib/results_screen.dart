import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswersList});

  final List<String> chosenAnswersList;

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summaryList = [];

    for (var i = 0; i < chosenAnswersList.length; i++) {
      summaryList.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswersList[i],
      });
    }

    return summaryList;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numOfTotalAnswers = questions.length;
    final numOfCorrectAnswers = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "You answered $numOfCorrectAnswers out of $numOfTotalAnswers questions correctly",
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          QuestionsSummary(getSummaryData()),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            child: const Text("Restart Quiz!"),
          )
        ]),
      ),
    );
  }
}
