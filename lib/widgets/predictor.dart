import 'dart:math';
import 'package:flutter/material.dart';

class Predictor extends StatefulWidget {
  @override
  _PredictorState createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  final List<String> _answers = [
    'Yes, definitely!',
    'No, sorry.',
    'Ask again later.',
    'It is certain.',
    'Very doubtful.',
    'Without a doubt.',
    'Cannot predict now.',
    'Outlook not so good.',
  ];

  String _answer = 'Tap me for an answer';

  void _getAnswer() {
    setState(() {
      _answer = _answers[Random().nextInt(_answers.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Center(
        child: GestureDetector(
          onTap: _getAnswer,
          child: Text(
            _answer,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}