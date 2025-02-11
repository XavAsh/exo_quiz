import 'package:flutter/material.dart';
import '../widgets/question_widget.dart';
import '../data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  final void Function(bool) onSelectAnswer;

  const QuestionsScreen({super.key, required this.onSelectAnswer});

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _currentQuestionIndex = 0;
  int _correctAnswers = 0;

  void _answerQuestion(bool answer) {
    if (answer == questions[_currentQuestionIndex].response) {
      _correctAnswers++;
    }
    widget.onSelectAnswer(answer);
    setState(() {
      _currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_currentQuestionIndex >= questions.length) {
      return Center(child: Text('You have completed the quiz!'));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Score: $_correctAnswers'),
      ),
      body: QuestionWidget(
        question: questions[_currentQuestionIndex],
        onAnswer: _answerQuestion,
      ),
    );
  }
}
