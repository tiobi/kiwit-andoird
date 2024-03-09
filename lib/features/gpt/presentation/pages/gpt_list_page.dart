import 'package:flutter/material.dart';

class GptListPage extends StatelessWidget {
  const GptListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Center(child: Text('Gpt List Page')),
        ],
      ),
    );
  }
}
