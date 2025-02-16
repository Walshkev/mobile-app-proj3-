import 'package:flutter/material.dart';
import 'dart:math';

class EightBall extends StatefulWidget {
  @override
  _eightballState createState() => _eightballState();
}

class _eightballState extends State<EightBall> {
  final List<String> _answers = [
    'Yes, definitely!',
    'No, sorry.',
    'Ask again later.',
    'It is certain.',
    'Very doubtful.',
    'Without a doubt.',
    'Cannot predict now.',
    'Outlook not so good.',
    "Go ask your wife "
  ];

  String _answer = 'Tap Me for an answer';

  void _getAnswer() {
    setState(() {
      _answer = _answers[Random().nextInt(_answers.length)];
    });
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Click the ball for your answers',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        GestureDetector(
          onTap: _getAnswer,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              _answer,
              style: eightball(),
            ),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }

  TextStyle eightball() {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
  }
}
