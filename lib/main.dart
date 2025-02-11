import 'package:flutter/material.dart';
import 'views/start_quiz.dart';
import 'views/question_page.dart';
import 'views/result_page.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const StartScreen(),
        '/questions': (context) => const QuestionsScreen(),
        '/results': (context) => const ResultScreen(),
      },
    );
  }
}
