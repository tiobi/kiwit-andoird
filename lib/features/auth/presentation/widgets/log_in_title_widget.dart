import 'package:flutter/material.dart';

class LogInTitleWidget extends StatelessWidget {
  const LogInTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
      child: const Center(
        child: Text(
          "kiwIT",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
