import 'package:flutter/material.dart';
import 'package:kiwit/config/routes/app_routes.dart';
import 'package:kiwit/features/lecture/presentation/widgets/lecture_level_tile_widget.dart';
import 'package:kiwit/features/lecture/presentation/widgets/lecture_search_bar_widget.dart';

class LectureListPage extends StatelessWidget {
  const LectureListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LectureSearchBarWidget(),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            LectureTileWidget(
              text: "Level 1",
              onPressed: () {
                _navigateToLectureContentPage(context);
              },
            ),
            LectureTileWidget(
              text: "Level 2",
              onPressed: () {
                _navigateToLectureContentPage(context);
              },
            ),
            LectureTileWidget(
              text: "Level 3",
              onPressed: () {
                _navigateToLectureContentPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToLectureContentPage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lectureLevel);
  }
}
