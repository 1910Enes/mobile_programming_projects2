import 'dart:io';

class Quiz {
  late List<Question> _questions;
  int _currentQuestionIndex = 0;
  int _score = 0;

  Quiz() {
    _questions = [
      Question("Ankaragücü'nün kuruluş yili nedir?", "1910"),
      Question("Hangi renklerde oynar?", "Sari Lacivert"),
      Question("Hangi stadyumda iç saha maçlarini oynar?", "Eryaman Stadyumu"),
      Question("Kaç kez Türkiye Futbol Şampiyonasi'ni kazanmiştir?", "2"),
      Question("Ankaragücü hangi ligde mücadele ediyor?", "Super Lig"),
      Question("Hangi semtte kurulmuştur?", "Cebeci"),
      Question("Hangi isimle anilir?", "Kupa Beyi"),
      Question("Ankaragücü'nün maskotu nedir?", "Benekli Sirtlan")
    ];
  }

  bool hasNextQuestion() {
    return _currentQuestionIndex < _questions.length;
  }

  Question getCurrentQuestion() {
    return _questions[_currentQuestionIndex];
  }

  void answerQuestion(String userAnswer) {
    if (_currentQuestionIndex < _questions.length) {
      if (_questions[_currentQuestionIndex].isCorrect(userAnswer)) {
        _score += 1; 
      }
      _currentQuestionIndex++;
    }
  }

  int getScore() {
    return _score;
  }
}

class Question {
  String _question;
  String _correctAnswer;

  Question(this._question, this._correctAnswer);

  bool isCorrect(String userAnswer) {
    return userAnswer.toLowerCase() == _correctAnswer.toLowerCase();
  }

  String getQuestion() {
    return _question;
  }

  String get correctAnswer => _correctAnswer; 
}

void main() {
  Quiz quiz = Quiz();
  print("Ne kadar Ankaragüclüsün >>>> Quiz");

  while (quiz.hasNextQuestion()) {
    Question question = quiz.getCurrentQuestion();
    print("Soru: ${question.getQuestion()}");
    stdout.write("Cevabinizi giriniz: ");
    String? userAnswer = stdin.readLineSync();
    if (userAnswer != null) {
      quiz.answerQuestion(userAnswer);
    }
  }

  print("Quiziniz tamamlandi! Puaniniz: ${quiz.getScore()} / ${quiz._questions.length}");

  print("Doğru Cevaplar:");
  for (int i = 0; i < quiz._questions.length; i++) {
    print("${i + 1}. Soru: ${quiz._questions[i].correctAnswer}");
  }
}
