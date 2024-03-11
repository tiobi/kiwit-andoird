import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';

class QuizResultPage extends StatelessWidget {
  const QuizResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Result'),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Center(
            child: Text("Quiz Result"),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _navigateToQuizContentPage(context);
                  },
                  child: const Text("Retry"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _navigateToQuizListPage(context);
                  },
                  child: const Text("Okay"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToQuizContentPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.quizContent);
  }

  void _navigateToQuizListPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.quizList);
  }
}
