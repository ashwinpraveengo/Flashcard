import 'package:flashcard/views/Auth/signin.dart';
import 'package:flashcard/widgets/builddot.dart';
import 'package:flashcard/widgets/button.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              if (_currentIndex < contents.length - 1) {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 550),
                  curve: Curves.easeIn,
                );
              }
            },
            child: PageView.builder(
              controller: _controller,
              itemCount: contents.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (_, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.1,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.08),
                      Image.asset(
                        contents[index].image,
                        width: screenWidth * 0.8,
                      ),
                      SizedBox(height: screenHeight * 0.03),
                      Text(
                        contents[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          color: Colors.black,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02,
                            ),
                            child: Text(
                              contents[index].description,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenWidth * 0.055,
                                color: Colors.black,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          if (_currentIndex != contents.length - 1)
            Positioned(
              top: screenHeight * 0.05,
              right: screenWidth * 0.05,
              child: GestureDetector(
                onTap: () {
                  // Navigate to the third page (index 2)
                  _controller.animateToPage(
                    2,
                    duration: const Duration(milliseconds: 550),
                    curve: Curves.easeIn,
                  );
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: screenWidth * 0.05,
                    color: Colors.black,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
          if (_currentIndex == contents.length - 1)
            Positioned(
              bottom: screenHeight * 0.15,
              left: screenWidth * 0.125,
              child: SizedBox(
                width: screenWidth * 0.75,
                height: screenHeight * 0.06,
                child: CircularButton(
                  text: "Continue",
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                ),
              ),
            ),
          if (_currentIndex != contents.length - 1)
            Positioned(
              bottom: screenHeight * 0.09,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                  (index) => BuildDot(
                    currentIndex: _currentIndex,
                    index: index,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class OnboardingScreenitems {
  final String image;
  final String title;
  final String description;

  OnboardingScreenitems({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnboardingScreenitems> contents = [
  OnboardingScreenitems(
    title: 'Flashcards for All Subjects',
    image: 'images/onb1.png',
    description:
        "Access flashcards covering various subjects, helping you learn and revise with ease.",
  ),
  OnboardingScreenitems(
    title: 'Interactive Learning',
    image: 'images/onb2.png',
    description:
        "Engage with interactive flashcards designed to make learning fun and effective.",
  ),
  OnboardingScreenitems(
    title: 'Offline Access',
    image: 'images/onb3.png',
    description:
        "Study anytime, anywhere by downloading flashcards for offline use.",
  ),
];
