import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'package:flashcard/constants/data.dart'; // Assuming Flashcard model is in data.dart

class FlashcardWidget extends StatelessWidget {
  final Flashcard flashcard;
  final int index;

  FlashcardWidget({required this.flashcard, required this.index});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 4,
      color: _getCardColor(index),
      child: FlipCard(
        front: Container(
          padding: const EdgeInsets.all(24), // Increase padding for a larger card
          height: 250, // Increase height for a larger card
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Math.tex(
                      flashcard.question,
                      textStyle: const TextStyle(fontSize: 24, color: Colors.white), // Increase font size
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: const Icon(Icons.arrow_forward, color: Colors.white, size: 32), // Increase icon size
              ),
            ],
          ),
        ),
        back: Container(
          padding: const EdgeInsets.all(24), // Increase padding for a larger card
          height: 250, // Ensure the back card has the same height as the front
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Colors.lightGreen,
          ),
          child: Center(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Math.tex(
                flashcard.answer,
                textStyle: const TextStyle(fontSize: 24, color: Colors.black), // Increase font size
              ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getCardColor(int index) {
    // This function assigns different colors based on index or category
    // You can customize this to fit your categories or design
    switch (index % 3) {
      case 0:
        return Colors.teal;
      case 1:
        return Colors.blue;
      case 2:
        return Colors.deepPurple;
      default:
        return Colors.teal;
    }
  }
}
