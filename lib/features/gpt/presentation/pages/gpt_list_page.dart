import 'package:flutter/material.dart';

import '../../../../config/routes/app_routes.dart';
import '../widgets/gpt_tile_widget.dart';

class GptListPage extends StatelessWidget {
  const GptListPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GptTileWidget(
              text: "NodeJS 백엔드",
              onPressed: () {
                onPressed(context);
              },
            ),
            GptTileWidget(
              text: "iOS 개발자",
              onPressed: () {
                onPressed(context);
              },
            ),
            GptTileWidget(
              text: "CS관련 면접 질문 #1",
              onPressed: () {
                onPressed(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void onPressed(BuildContext context) {
    Navigator.pushReplacementNamed(context, AppRoutes.gptContent);
  }
}
