import 'selected_choice_page.dart';
import 'package:flutter/material.dart';

class ChooseExamPage extends StatelessWidget {
  ChooseExamPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Your Exam"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0, 
            mainAxisSpacing: 16.0, 
          ),
          itemCount: exams.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedChoicePage(choice: exams[index]),
                  ),
                );
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      examImages[exams[index]] ?? 'images/placeholder.png',
                      height: 50, 
                    ),
                    const SizedBox(height: 10),
                    Text(exams[index]),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  final List<String> exams = [
    'NEET', 'JEE',
  ];

  final Map<String, String> examImages = {
    'NEET': 'images/nta.png',
    'JEE': 'images/nta.png',
  };
}
