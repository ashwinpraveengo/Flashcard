import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String text;
  final Icon? icon;
  final VoidCallback? onPressed;

  const CircularButton({
    super.key, 
    required this.text, 
    required this.onPressed,
    this.icon
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor:Color.fromARGB(255, 29, 185, 138),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) icon!,
          if (icon != null) const SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.height / 40,
            ),
          ),
        ],
      ),
    );
  }
}
