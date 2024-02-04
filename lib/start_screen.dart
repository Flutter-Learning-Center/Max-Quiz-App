import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(180, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          const Text('Learn Flutter the fun way!',
              style: TextStyle(fontSize: 24, color: Colors.white)),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.play_arrow, color: Colors.white),
            label: const Text('Start Quiz',
                style: TextStyle(fontSize: 18, color: Colors.white)),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
