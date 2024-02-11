import 'package:flashcard/widgets/flashwidget.dart';
import 'package:flutter/material.dart';
import 'package:flashcard/constants/data.dart'; 

class FlashcardPage extends StatelessWidget {
  final Chapter chapter;

  const FlashcardPage({super.key, required this.chapter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter.name),
        backgroundColor: const Color.fromARGB(255, 29, 185, 138),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: chapter.flashcards.length,
        itemBuilder: (context, index) {
          final flashcard = chapter.flashcards[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: FlashcardWidget(flashcard: flashcard, index: index),
          );
        },
      ),
    );
  }
}