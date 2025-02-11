import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, Object>;
    final int correctAnswers = args['correctAnswers'] as int;
    final int totalQuestions = args['totalQuestions'] as int;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (correctAnswers <= 4)
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                'assets/sad.jpg',
                width: 300,
              ),
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
            'Tu as répondu à $correctAnswers sur $totalQuestions questions correctement!',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/', (Route<dynamic> route) => false);
            },
            child: const Text('Recommencer'),
          ),
        ],
      ),
    );
  }
}
