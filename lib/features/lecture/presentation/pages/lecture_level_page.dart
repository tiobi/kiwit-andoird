import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../widgets/lecture_content_tile_widget.dart';

class LectureLevelPage extends StatelessWidget {
  const LectureLevelPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Level 1'),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LectureContentTileWidget(
                text: "Content 1",
                onPressed: () {
                  _navigateToLectureContentPage(context);
                }),
            LectureContentTileWidget(
                text: "Content 2",
                onPressed: () {
                  _navigateToLectureContentPage(context);
                }),
            LectureContentTileWidget(
                text: "Content 3",
                onPressed: () {
                  _navigateToLectureContentPage(context);
                }),
          ],
        ),
      ),
    );
  }

  void _navigateToLectureContentPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lectureContent);
  }
}
