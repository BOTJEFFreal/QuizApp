class Question {
  late String question;
  late List<String> options;
  late int correctOption;
  late String condition;
  late int questionNumber;
  late int answered = 0;

  Question(int ans,
      {required String q,
      required List<String> o,
      required int cO,
      required String cond,
      required int quesNo}) {
    question = q;
    options = o;
    correctOption = cO;
    condition = cond;
    questionNumber = quesNo;
    answered = 0;
  }
}
