import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {required this.answerText, required this.onTap, super.key});
  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          answerText,
          textAlign: TextAlign.center,
        ),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: Color.fromARGB(255, 0, 54, 102),
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 40,
            )),
      ),
    );
  }
}
