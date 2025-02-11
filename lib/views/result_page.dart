import 'package:flutter/material.dart';
import '../data/questions.dart';

class ResultScreen extends StatelessWidget {
  final List<bool> chosenAnswers;
  final void Function() onRestart;

  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  @override
  Widget build(BuildContext context) {
    int correctAnswers = 0;
    for (int i = 0; i < chosenAnswers.length; i++) {
      if (chosenAnswers[i] == questions[i].response) {
        correctAnswers++;
      }
    }

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (correctAnswers <= 4)
            Image.asset(
              'assets/sad.jpg',
              width: 300,
            )
          else
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'assets/happy.gif',
                width: 300,
              ),
            ),
          Text(
            'Tu a répondu a $correctAnswers sur ${questions.length} questions correctement!',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: onRestart,
            child: const Text('Recommencer'),
          ),
        ],
      ),
    );
  }
}
