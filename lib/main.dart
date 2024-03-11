import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(8.0), // Half of the container size
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/QuizImage.jpeg',
                ), // Replace with your image asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Learn Flutter the fun Way!",
            style:
                TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 54, 102)),
          ),
          SizedBox(
            height: 20,
          ),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                backgroundColor: Color.fromRGBO(0, 61, 116, 1)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Quiz(),
                ),
              );
            },
            icon: Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
            ),
            label: Text(
              "Start Quiz",
              style: TextStyle(color: Colors.white),
            ),
          )
        ]),
      ),
    );
  }
}
