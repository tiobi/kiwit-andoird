import 'package:flutter/material.dart';
import 'package:kiwit/features/quiz/presentation/widgets/quiz_tile_widget.dart';

import '../../../../config/routes/app_routes.dart';

class QuizListPage extends StatelessWidget {
  const QuizListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quiz List'),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            QuizTileWidget(
                text: "Quiz 1",
                onPressed: () {
                  _navigateToQuizContentPage(context);
                }),
            QuizTileWidget(
                text: "Quiz 2",
                onPressed: () {
                  _navigateToQuizContentPage(context);
                }),
            QuizTileWidget(
                text: "Quiz 3",
                onPressed: () {
                  _navigateToQuizContentPage(context);
                }),
          ],
        ),
      ),
    );
  }

  void _navigateToQuizContentPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.quizContent);
  }
}
