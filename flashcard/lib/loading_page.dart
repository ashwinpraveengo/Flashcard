import 'package:flutter/material.dart';
import 'main_page.dart'; 

class CreatingProfilePage extends StatefulWidget {
  final String selectedChoice;

  const CreatingProfilePage({Key? key, required this.selectedChoice}) : super(key: key);

  @override
  _CreatingProfilePageState createState() => _CreatingProfilePageState();
}

class _CreatingProfilePageState extends State<CreatingProfilePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => MainPage(selectedChoice: widget.selectedChoice),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
            const SizedBox(height: 20),
            const Text("Creating your profile..."),
          ],
        ),
      ),
    );
  }
}
