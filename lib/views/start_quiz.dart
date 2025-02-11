import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  void startQuiz(BuildContext context) {
    Navigator.pushNamed(context, '/questions');
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            'assets/yes.png',
            width: 300,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'Quiz Automobile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: () => startQuiz(context),
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.play_arrow),
          label: const Text('Commencer'),
        ),
      ]),
    );
  }
}
