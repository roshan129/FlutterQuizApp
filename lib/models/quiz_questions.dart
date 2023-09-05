class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledAnswerList = List.of(answers);
    shuffledAnswerList.shuffle();
    return shuffledAnswerList;
  }
}
