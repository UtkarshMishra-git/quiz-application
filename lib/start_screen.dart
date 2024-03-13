import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final Function() startQuiz;
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(8.0), // Half of the container size
            image: const DecorationImage(
              image: AssetImage(
                'assets/images/QuizImage.jpeg',
              ), // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Learn Flutter the fun Way!",
          style:
              TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 54, 102)),
        ),
        const SizedBox(
          height: 20,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              backgroundColor: Color.fromRGBO(0, 61, 116, 1)),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => QuestionsScreen(),
            //   ),
            // );
            startQuiz();
          },
          icon: const Icon(
            Icons.arrow_right_alt,
            color: Colors.white,
          ),
          label: const Text(
            "Start Quiz",
            style: TextStyle(color: Colors.white),
          ),
        )
      ]),
    );
  }
}
