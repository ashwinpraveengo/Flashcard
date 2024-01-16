import 'selected_choice_page.dart';
import 'package:flutter/material.dart';

class ChooseClassPage extends StatelessWidget {
  ChooseClassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Your Class"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), 
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0, 
            mainAxisSpacing: 16.0, 
          ),
          itemCount: classes.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectedChoicePage(choice: classes[index]),
                  ),
                );
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      classImages[classes[index]] ?? 'images/placeholder.png',
                      height: 50, 
                    ),
                    const SizedBox(height: 10),
                    Text(classes[index]),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  final List<String> classes = [
    'Class 8', 'Class 9', 'Class 10',
    'Medical', 'Engineering', 'Commerce',
  ];
  final Map<String, String> classImages = {
    'Class 8': 'images/class8.png',
    'Class 9': 'images/class9.png',
    'Class 10': 'images/class10.png',
    'Medical': 'images/medical.png',
    'Engineering': 'images/engineering.png',
    'Commerce': 'images/commerce.png',
  };
}
