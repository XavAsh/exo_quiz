import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionWidget extends StatelessWidget {
  final Question question;
  final void Function(bool) onAnswer;

  const QuestionWidget(
      {super.key, required this.question, required this.onAnswer});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(question.imagePath),
            const SizedBox(height: 10),
            Text(
              question.question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('True'),
              onTap: () => onAnswer(true),
            ),
            ListTile(
              title: const Text('False'),
              onTap: () => onAnswer(false),
            ),
          ],
        ),
      ),
    );
  }
}
