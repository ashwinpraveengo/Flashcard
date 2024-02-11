import 'package:flashcard/views/header_parts.dart';
import 'package:flashcard/views/cardshome.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedCategoryIndex = 0; // Initialize with a default category index

  // Function to update the selected category index
  void _updateCategoryIndex(int newIndex) {
    setState(() {
      _selectedCategoryIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          selectedItemColor: const Color.fromARGB(255, 29, 185, 138),
          unselectedItemColor: Colors.green[200],
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.notifications,
                ),
                label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_box_rounded,
                ),
                label: 'Profile'),
          ]),
      body: ListView(
        children: [
          const SizedBox(
            height: 15,
          ),
          HeaderParts(onCategorySelected: _updateCategoryIndex), // Pass the function to HeaderParts
          ItemsDisplay(categoryIndex: _selectedCategoryIndex), // Pass the selected category index
        ],
      ),
    );
  }
}
