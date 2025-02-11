import 'package:flutter/material.dart';
import '../widgets/question_widget.dart';
import '../data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  _QuestionsScreenState createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _currentQuestionIndex = 0;
  int _correctAnswers = 0;
  List<bool> _selectedAnswers = [];

  void _answerQuestion(bool answer) {
    if (answer == questions[_currentQuestionIndex].response) {
      _correctAnswers++;
    }
    _selectedAnswers.add(answer);
    if (_currentQuestionIndex < questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      Navigator.pushNamed(context, '/results', arguments: {
        'correctAnswers': _correctAnswers,
        'totalQuestions': questions.length,
        'selectedAnswers': _selectedAnswers,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
