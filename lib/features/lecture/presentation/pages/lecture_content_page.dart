import 'package:flutter/material.dart';

class LectureContentPage extends StatelessWidget {
  const LectureContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Content 1'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('Content 1'),
      ),
    );
  }
}
