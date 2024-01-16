import 'package:flutter/material.dart';
import 'loading_page.dart';

class SelectedChoicePage extends StatelessWidget {
  final String choice;

  const SelectedChoicePage({Key? key, required this.choice}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imagePath = ''; 

    switch (choice) {
      case 'Class 8':
        imagePath = 'images/class8.png';
        break;
      case 'Class 9':
        imagePath = 'images/class9.png';
        break;
      case 'Class 10':
        imagePath = 'images/class10.png';
        break;
      case 'Medical':
        imagePath = 'images/medical.png';
        break;
      case 'Non-Medical':
        imagePath = 'images/non_medical.png';
        break;
      case 'Commerce':
        imagePath = 'images/commerce.png';
        break;
      case 'NEET':
        imagePath = 'images/nta.png';
        break;
      case 'JEE':
        imagePath = 'images/nta.png';
        break;
      default:
        imagePath = 'images/default.png';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Confirmation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              imagePath,
              width: 100, 
              height: 100, 
            ),
            const SizedBox(height: 20),
            Text(
              choice,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatingProfilePage(selectedChoice: choice),
                  ),
                );
              },
              child: const Text("Proceed"),
            ),
          ],
        ),
      ),
    );
  }
}
