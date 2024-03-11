import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';

class GptContentPage extends StatelessWidget {
  const GptContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _navigateToGptResultPage(context);
            },
            child: const Text("See Quiz Result")),
      ),
    );
  }

  void _navigateToGptResultPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.gptResult);
  }
}
