import 'package:flutter/material.dart';
import 'signup_page.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'sign_in_page.dart';


class SlidablePages extends StatelessWidget {
  const SlidablePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          slidablePage(
                context,
                "Everything you need at one place",
                "Ace your next exam with the least amount of time, effort & money spent",
                Icons.star_outline,
                Colors.blue,
              ),
          slidablePage(
                context,
                "Prepare with Section-wise courses",
                "Learn from the most structured courses prepared by the best teachers",
                Icons.school,
                Colors.green,
              ),

        ],
      ),
    );
  }

  Widget slidablePage(BuildContext context, String title, String description, IconData iconData, Color color,) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 100,
            color: color,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: () async {
              final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
              if (googleUser != null) {
                print('Google Sign In Successful');
              } else {
                print('Google Sign In Canceled or Error');
              }
            },
            child: const Text("Continue with Google"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignupPage()),
              );
            },
            child: const Text("Sign up with Email or Phone"),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
            child: const Text("Already have an account? Sign in"),
          ),
        ],
      ),
    );
  }
}
