import 'package:flutter/material.dart';
import 'notifications.dart'; 
import 'welcome_page.dart';
import 'main.dart';
import 'data.dart';


class MainPage extends StatelessWidget {
  final String selectedChoice; 
  const MainPage({Key? key, required this.selectedChoice}) : super(key: key);

  void _showNotificationDialog(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 500), () {
      showAllowNotificationDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    Class selectedClass = classes.firstWhere((classItem) => classItem.name == selectedChoice);

    return Scaffold(
      appBar: AppBar(
        title: const Text("FlashMaster"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              showInformationDialog(context);
            },
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16.0), 
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: selectedClass.subjects.length,
          itemBuilder: (context, index) {
          Subject subject = selectedClass.subjects[index];
          String imagePath = ''; 

          switch (subject.name) {
            case "Maths":
              imagePath = "images/app_icon.png"; 
              break;
            case "Science":
              imagePath = "images/app_icon.png"; 
              break;

            default:
              imagePath = "images/app_icon.png"; 
              break;
          }

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChapterListScreen(subject: subject),
                ),
              );
            },
            child: Card(
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imagePath,
                    width: 60,
                    height: 60,
                  ),
                  const SizedBox(height: 8),
                  Text(subject.name),
                  const SizedBox(height: 4),
                  Text("${subject.chapters.length} chapters"),
                ],
              ),
            ),
          );
        },
      ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("Name"),
              accountEmail: const Text("Email"),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
              onTap: () {
              },
            ),
            ListTile(
              leading: const Icon(Icons.school),
              title: const Text("Explore Courses"),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomePage(userName: "YourUserName"),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.share),
              title: const Text("Share App"),
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }

  void showInformationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("What is FlashMaster Infinity?"),
          content: const Text(
            "FlashMaster Infinity is a special pass that unlocks access to all flashcard courses under the Infinity package, "
            "removing all maximum limits and offering even more!\n\n"
            "Welcome to FlashMaster! We are thrilled to have you join one of the most dynamic learning communities! "
            "Our commitment is to enhance your learning experience significantly. "
            "We look forward to seeing you enthusiastically progress in your studies! -Team FlashMaster",
          ),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
