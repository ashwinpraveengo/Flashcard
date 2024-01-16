import 'package:flutter/material.dart';
import 'welcome_page.dart';
import 'sign_in_page.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/app_icon.png", height: 100, width: 100),
          const SizedBox(height: 20),
          const Text("Create your Account", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 20),
          const SignupForm(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _fullNameController = TextEditingController();
    
    return Column(
      children: [
        TextField(
          controller: _fullNameController,
          decoration: InputDecoration(labelText: "Full Name"),
        ),
        const TextField(decoration: InputDecoration(labelText: "Email")),
        const TextField(decoration: InputDecoration(labelText: "Mobile Phone")),
        const TextField(decoration: InputDecoration(labelText: "Password")),
        const SizedBox(height: 10),
        Row(
          children: [
            Checkbox(value: false, onChanged: (value) {}),
            const Text("I agree to terms and conditions", style: TextStyle(color: Colors.blue)),
          ],
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            String? enteredFullName = _fullNameController.text;

            if (enteredFullName != null && enteredFullName.isNotEmpty) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => WelcomePage(userName: enteredFullName)),
              );
            } else {
              print("Please enter a valid full name");
            }
          },
          child: const Text("Sign Up"),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SignInPage()),
            );
          },
          child: const Text("Already have an account? Sign in"),
        ),
      ],
    );
  }
}
