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
  void _showExplanationDialog(
      String explanation, String response, bool answer) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Explication'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(explanation),
              const SizedBox(height: 10),
              Text('réponse: ${response == 'true' ? 'vrai' : 'faux'}'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Wouaw trop cooool'),
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
    _showExplanationDialog(widget.question.explanation,
        widget.question.response.toString(), answer);
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
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                height: 200,
                width: double.infinity,
                widget.question.imagePath,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 150,
              child: Text(
                widget.question.question,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('Vrai'),
              onTap: () => _handleAnswer(true),
            ),
            ListTile(
              title: const Text('Faux'),
              onTap: () => _handleAnswer(false),
            ),
          ],
        ),
      ),
    );
  }
}
