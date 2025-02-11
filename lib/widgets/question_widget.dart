import 'package:flutter/material.dart';
import '../models/question.dart';

class QuestionWidget extends StatefulWidget {
  final Question question;
  final void Function(bool) onAnswer;

  const QuestionWidget(
      {super.key, required this.question, required this.onAnswer});

  @override
  _QuestionWidgetState createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  Color? _trueButtonColor;
  Color? _falseButtonColor;

  void _showExplanationDialog(
      String explanation, bool answer, String response, bool isCorrect) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Explication'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(explanation),
              const SizedBox(height: 10),
              Text(response),
              const SizedBox(height: 10),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Woauw! trop coul!'),
              onPressed: () {
                Navigator.of(context).pop();
                widget.onAnswer(answer);
              },
            ),
          ],
        );
      },
    );
  }

  void _handleAnswer(bool answer) {
    bool isCorrect = (answer == widget.question.response);

    _showExplanationDialog(
        widget.question.explanation,
        answer,
        isCorrect
            ? 'Votre réponse est correcte'
            : 'Votre réponse est incorrecte',
        isCorrect);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(widget.question.imagePath),
            const SizedBox(height: 10),
            Text(
              widget.question.question,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('Vrai'),
              tileColor: _trueButtonColor,
              onTap: () => _handleAnswer(true),
            ),
            ListTile(
              title: const Text('Faux'),
              tileColor: _falseButtonColor,
              onTap: () => _handleAnswer(false),
            ),
          ],
        ),
      ),
    );
  }
}
