import 'package:flutter/material.dart';

class BuildDot extends StatelessWidget {
  const BuildDot({
    super.key,
    required this.currentIndex,
    required this.index,
  });

  final int currentIndex;
  final int index;

  @override
  Widget build(BuildContext context) {
    Color dotColor = currentIndex == index
        ? Color.fromARGB(255, 29, 185, 138)
        : Colors.grey;

    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: dotColor,
      ),
    );
  }
}
