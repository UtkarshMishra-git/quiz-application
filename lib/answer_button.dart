import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({required this.ansText, required this.onClick, super.key});
  final String ansText;
  final Function() onClick;
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(
        ansText,
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
    );
  }
}
