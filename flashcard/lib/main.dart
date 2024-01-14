import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_math_fork/flutter_math.dart';

void main() {
  runApp(MyApp());
}

class Subject {
  String name;
  List<Chapter> chapters;

  Subject({required this.name, required this.chapters});
}

class Chapter {
  String name;
  List<Flashcard> flashcards;

  Chapter({required this.name, required this.flashcards});
}

class Flashcard {
  String question;
  String answer;

  Flashcard({required this.question, required this.answer});
}

class MyApp extends StatelessWidget {
  final List<Subject> subjects = [
    Subject(
      name: "Maths",
      chapters: [
        Chapter(
          name: "Integration",
          flashcards: [
            Flashcard(question: r"\int x^n \,dx", answer: r"\frac{x^{n+1}}{n+1} + C"),
            Flashcard(question: r"\int \cos(x) \,dx", answer: r"\sin(x) + C"),
          ],
        ),
        Chapter(
          name: "Differentiation",
          flashcards: [
            Flashcard(question: r"\frac{d}{dx}(x^n)", answer: r"nx^{n-1} "),
            Flashcard(question: r"\frac{d}{dx}(\sin(x))", answer: r"\cos(x)"),
          ],
        ),
      ],
    ),
    Subject(
      name: "Physics",
      chapters: [
        Chapter(
          name: "Kinematics",
          flashcards: [
            Flashcard(question: r"Equation~of~Motion", answer: r"v = u + at"),
            Flashcard(question: r"Kinematic~Equation", answer: r"s = ut + \frac{1}{2}at^2"),
          ],
        ),
        Chapter(
          name: "Gravitation",
          flashcards: [
            Flashcard(question: r"Gravitational~Force", answer: r"F = G \cdot \frac{m_1 \cdot m_2}{r^2}"),
            Flashcard(question: r"Acceleration~due~to~Gravity", answer: r"g = G \cdot \frac{M}{r^2}"),
          ],
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlashCards',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
        ),
      ),
      home: SubjectListScreen(subjects: subjects),
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
          return ListTile(
            title: Text(widget.subjects[index].name),
            subtitle: Text(
              "${widget.subjects[index].chapters.length} chapters in this section",
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
          return ListTile(
            title: Text(widget.subject.chapters[index].name),
            subtitle: Text(
              "${getCompletedFlashcards(widget.subject.chapters[index])} completed",
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      FlashcardScreen(chapter: widget.subject.chapters[index]),
                ),
              );
            },
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

  String getCompletedFlashcards(Chapter chapter) {
    int completedFlashcards = chapter.flashcards
        .where((card) => card.answer.isNotEmpty)
        .length;

    return "$completedFlashcards/${chapter.flashcards.length}";
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