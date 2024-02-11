import 'package:flashcard/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_math_fork/flutter_math.dart';
import 'constants/data.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlashCards',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SubjectListScreen extends StatefulWidget {
  final List<Subject> subjects;

  SubjectListScreen({required this.subjects});

  @override
  _SubjectListScreenState createState() => _SubjectListScreenState();
}

class _SubjectListScreenState extends State<SubjectListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FlashCards"),
      ),
      body: ListView.builder(
        itemCount: widget.subjects.length,
        itemBuilder: (context, index) {
          IconData iconData = Icons.category; // Change the icon based on your preference

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(
                  iconData,
                  color: Theme.of(context).primaryColor,
                ),
                title: Text(
                  widget.subjects[index].name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${widget.subjects[index].chapters.length} chapters in this section",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ChapterListScreen(subject: widget.subjects[index]),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddSubjectDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }


  void _showAddSubjectDialog(BuildContext context) {
    TextEditingController subjectController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Add Subject"),
          content: TextField(
            controller: subjectController,
            decoration: const InputDecoration(labelText: "Subject Name"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (subjectController.text.isNotEmpty) {
                  Navigator.pop(context);
                  _addSubject(subjectController.text);
                }
              },
              child: const Text("Add"),
            ),
          ],
        );
      },
    );
  }

  void _addSubject(String subjectName) {
    Subject newSubject = Subject(name: subjectName, chapters: []);
    setState(() {
      widget.subjects.add(newSubject);
    });
  }
}

class ChapterListScreen extends StatefulWidget {
  final Subject subject;

  ChapterListScreen({required this.subject});

  @override
  _ChapterListScreenState createState() => _ChapterListScreenState();
}

class _ChapterListScreenState extends State<ChapterListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subject.name),
      ),
      body: ListView.builder(
        itemCount: widget.subject.chapters.length,
        itemBuilder: (context, index) {
          Chapter chapter = widget.subject.chapters[index];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: Image.asset(
                  'images/chapicon.png', // Replace with your actual path to the image
                  width: 40,
                  height: 40,
                ),
                title: Text(
                  chapter.name,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "${chapter.flashcards.length} flashcards",
                  style: TextStyle(fontSize: 16),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FlashcardScreen(chapter: chapter),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddChapterDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showAddChapterDialog(BuildContext context) {
    TextEditingController chapterController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Add Chapter"),
          content: TextField(
            controller: chapterController,
            decoration: const InputDecoration(labelText: "Chapter Name"),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (chapterController.text.isNotEmpty) {
                  Navigator.pop(context);
                  _addChapter(chapterController.text);
                }
              },
              child: const Text("Add"),
            ),
          ],
        );
      },
    );
  }

  void _addChapter(String chapterName) {
    Chapter newChapter = Chapter(name: chapterName, flashcards: []);
    setState(() {
      widget.subject.chapters.add(newChapter);
    });
  }
}

class FlashcardScreen extends StatefulWidget {
  final Chapter chapter;

  FlashcardScreen({required this.chapter});

  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.chapter.name),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: widget.chapter.flashcards.length,
              itemBuilder: (context, index) {
                return FlashcardWidget(flashcard: widget.chapter.flashcards[index]);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _showAddFlashcardDialog(context);
            },
            child: const Text("Add Flashcard"),
          ),
        ],
      ),
    );
  }

  void _showAddFlashcardDialog(BuildContext context) {
    TextEditingController questionController = TextEditingController();
    TextEditingController answerController = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Add Flashcard"),
          content: Column(
            children: [
              TextField(
                controller: questionController,
                decoration: const InputDecoration(labelText: "Question"),
              ),
              TextField(
                controller: answerController,
                decoration: const InputDecoration(labelText: "Answer"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {
                if (questionController.text.isNotEmpty &&
                    answerController.text.isNotEmpty) {
                  Navigator.pop(context);
                  _addFlashcard(
                      questionController.text, answerController.text);
                }
              },
              child: const Text("Add"),
            ),
          ],
        );
      },
    );
  }

  void _addFlashcard(String question, String answer) {
    Flashcard newFlashcard = Flashcard(question: question, answer: answer);
    setState(() {
      widget.chapter.flashcards.add(newFlashcard);
    });
  }
}


class FlashcardWidget extends StatelessWidget {
  final Flashcard flashcard;

  FlashcardWidget({required this.flashcard});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      front: Container(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 4,
          color: Colors.blue, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Math.tex(
                flashcard.question,
                textStyle: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      back: Container(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 4,
          color: Colors.lightGreen, 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Math.tex(flashcard.answer,
                textStyle: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}