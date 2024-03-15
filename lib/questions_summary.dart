import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;
  final Color rightColor = Colors.lightGreen;
  final Color wrongColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.lightGreen,
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: TextStyle(color: Colors.black87),
                    )),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        data['question'] as String,
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 54, 102),
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Text(data['user_answer'] as String),
                      Text(data['correct_answer'] as String),
                      SizedBox(
                        height: 5,
                      )
                    ],
                  ),
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
