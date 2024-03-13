import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  State<StatefulWidget> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('The Question...'),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 1'),
            style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder()),
          ),
          ElevatedButton(
              onPressed: () {},
              child: Text('Answer 2'),
              style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder())),
          ElevatedButton(
              onPressed: () {},
              child: Text('Answer 3'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(),
              )),
          ElevatedButton(
            onPressed: () {},
            child: Text('Answer 4'),
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(),
            ),
          ),
        ],
      ),
    );
  }
}
