import 'package:flutter/material.dart';

class LectureListPage extends StatelessWidget {
  const LectureListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Center(child: Text('Lecture List Page')),
        ],
      ),
    );
  }
}
