import 'package:flutter/material.dart';
import 'package:kiwit/config/routes/app_routes.dart';

class GptResultPage extends StatelessWidget {
  const GptResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                    _navigateToGptContentPage(context);
                  },
                  child: const Text("Retry"),
                ),
                ElevatedButton(
                  onPressed: () {
                    _navigateToGptListPage(context);
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

  void _navigateToGptContentPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.gptContent);
  }

  void _navigateToGptListPage(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.responsiveLayout);
  }
}
