import 'package:flutter/material.dart';
import 'views/start_quiz.dart';
import 'views/question_page.dart';
import 'views/result_page.dart';
import 'data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<bool> _selectedAnswers = [];
  var _activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      _activeScreen = 'questions-screen';
    });
  }

  void choseAnswer(bool answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      _activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (_activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: choseAnswer,
      );
    }
    if (_activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        chosenAnswers: _selectedAnswers,
        onRestart: restartQuiz,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 110, 176, 207),
        body: Container(
          child: screenWidget,
        ),
      ),
    );
  }
}

void main() {
  runApp(const Quiz());
}
