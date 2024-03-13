import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  //Method-1 for state lifting
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  //Method-2
  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      // Method-1
      // activeScreen = QuestionsScreen();

      // Method-2
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    // Method-3.1
    // final screenWidget=activeScreen=='start-screen'?StartScreen(switchScreen):const QuestionsScreen();

    //Method-3.2
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen();
    }

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 0, 54, 102)),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(color: Colors.white),
          //Method-1
          // child:  StartScreen()

          // Method-2
          // child: activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : QuestionsScreen(),

          // Method-3
          child: screenWidget,
        ),
      ),
    );
  }
}
