import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chosenAnswers[i]
        },
      );
    }
    return summary;
  }

  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    //we want length of correct answers not list so we use .length here

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(25),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
            style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 0, 54, 102),
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(height: 400, child: QuestionsSummary(getSummaryData())),
          SizedBox(
            height: 30,
          ),
          TextButton.icon(
              icon: Icon(Icons.refresh),
              onPressed: onRestart,
              label: Text(
                'Restart Quiz',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ))
        ]),
      ),
    );
  }
}
