import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';

class QuizContentPage extends StatelessWidget {
  const QuizContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz Content'),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _navigateToQuizResultPage(context);
            },
            child: const Text("See Quiz Result")),
      ),
    );
  }

  void _navigateToQuizResultPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.quizResult);
  }
}
