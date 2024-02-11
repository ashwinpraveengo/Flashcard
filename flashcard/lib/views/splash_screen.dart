import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flashcard/views/onboarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/splash.gif"),
          const SizedBox(height: 20),
          const Text(
            "FormuLearn",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
      nextScreen: OnboardingScreen(),
      splashIconSize: 300,
      backgroundColor: Colors.white,
    );
  }
}
