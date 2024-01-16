import 'package:flutter/material.dart';
import 'welcome_page.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController _userNameController = TextEditingController();

  SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "images/app_icon.png", 
              height: 100, 
            ),
            const SizedBox(height: 20),
            const Text(
              "Log in instead of create your account",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _userNameController,
              decoration: InputDecoration(
                labelText: "Enter email or phone",
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Enter password",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String? enteredUserName = _userNameController.text;

                if (enteredUserName != null && enteredUserName.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage(userName: enteredUserName)),
                  );
                } else {

                  print("Please enter a valid username");
                }
              },
              child: const Text("Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
