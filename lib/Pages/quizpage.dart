import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List questions = [
    {
      "question": "What is Flutter?",
      "option_a": "Flutter is an open-source backend development framework",
      "option_b": "Flutter is an open-source UI toolkit",
      "option_c": "Flutter is an open-source programming language for cross-platform applications",
      "option_d": "Flutters is a DBMS toolkit",
      "answer": "Flutter is an open-source UI toolkit"
    },
    {
      "question":"Who developed the Flutter Framework and continues to maintain it today?",
      "option_a": "facebook",
      "option_b": "Oracle",
      "option_c": "Google",
      "option_d": "Microsoft",
      "answer": "Google"
    },
    {
      "question": "Which programming language is used to build Flutter applications?",
      "option_a": "Kotlin",
      "option_b": "Java",
      "option_c": "Go",
      "option_d": "Dart",
      "answer": "Dart"
    },
    {
      "question": "How many types of widgets are there in Flutter?",
      "option_a": "2",
      "option_b": "4",
      "option_c": "6",
      "option_d": "8+",
      "answer": "2"
    },
    {
      "question": "Access to a cloud database through Flutter is available through which service?",
      "option_a": "SQLite",
      "option_b": "Firebase Database",
      "option_c": "NOSQL",
      "option_d": "MYSQL",
      "answer": "Firebase Database"
    },
    {
      "question": "What element is used as an identifier for components when programming in Flutter?",
      "option_a": "Widgets",
      "option_b": "Keys",
      "option_c": "Elements",
      "option_d": "Serial",
      "answer": "Keys"
    },
    {
      "question": "What command would you use to compile your Flutter app in release mode?",
      "option_a": "Flutter --release",
      "option_b": "Flutter build --release",
      "option_c": "Flutter run --release",
      "option_d": "Flutter run release",
      "answer": "Flutter run --release"
    },
    {
      "question": "What widget would you use for repeating content in Flutter?",
      "option_a": "ExpandedView",
      "option_b": "ListView",
      "option_c": "Stack",
      "option_d": "ArrayView",
      "answer": "ListView"
    },
  ];
  var rightAnswerCount = 0;
  var wrongAnswerCount = 0;
  var currentIndex = 0;

  ValidateAnswer(userInput) {
    if (currentIndex < questions.length - 1) {
      if (userInput == questions[currentIndex]["answer"]) {
        setState(() {
          rightAnswerCount += 1;
          currentIndex += 1;
        });
      } else {
        setState(() {
          wrongAnswerCount += 1;
          currentIndex += 1;
        });
      }
    } else {
      print("Something went wrong");
    }
  }

  reset() {
    setState(() {
      rightAnswerCount = 0;
      wrongAnswerCount = 0;
      currentIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("${questions[currentIndex]['question']}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      ValidateAnswer(questions[currentIndex]['option_a']);
                    },
                    child: Text("${questions[currentIndex]['option_a']}")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      ValidateAnswer(questions[currentIndex]['option_b']);
                    },
                    child: Text("${questions[currentIndex]['option_b']}")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      ValidateAnswer(questions[currentIndex]['option_c']);
                    },
                    child: Text("${questions[currentIndex]['option_c']}")),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      ValidateAnswer(questions[currentIndex]['option_d']);
                    },
                    child: Text("${questions[currentIndex]['option_d']}")),
              ),
              const SizedBox(height: 20),
              Text(
                  "Total: ${questions.length} - Right: ${rightAnswerCount} - wrong: ${wrongAnswerCount}"),
              TextButton(
                  onPressed: () {
                    reset();
                  },
                  child: Text("RESET")),
            ]),
      ),
    );
  }
}
