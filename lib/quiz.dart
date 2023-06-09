import 'package:flutter/material.dart';

class Question {
  final String text;
  final List<Option> options;
  final String imagePath;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    required this.imagePath,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  const Option({
    required this.text,
    required this.isCorrect,
  });
}

List<Question> questions = [
  Question(
    text: 'What is the letter for this sign?',
    options: [
      const Option(text: 'A', isCorrect: false),
      const Option(text: 'B', isCorrect: false),
      const Option(text: 'C', isCorrect: true),
      const Option(text: 'D', isCorrect: false),
    ],
    imagePath: 'images/ASLearning-logos.jpeg',
  ),
  Question(
    text: 'What is the letter for this signs?',
    options: [
      const Option(text: 'A', isCorrect: false),
      const Option(text: 'B', isCorrect: false),
      const Option(text: 'C', isCorrect: true),
      const Option(text: 'D', isCorrect: false),
    ],
    imagePath: 'images/ASLearning-logos.jpeg',
  ),
];
