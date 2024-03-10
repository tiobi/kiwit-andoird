import 'package:flutter/material.dart';

import '../../../../core/providers/app_size_provider.dart';
import '../../../../injection_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "kiwIT",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ),
        title: const Text('unlimited'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TempButton(text: "이어서 학습할 내용"),
            TempButton(text: "최근 Quiz 점수 내역"),
            TempButton(text: "다시 학습해볼 컨텐츠"),
          ],
        ),
      ),
    );
  }
}

Widget TempButton({String? text, Function()? onPressed}) {
  AppSizeProvider appSizeProvider = getIt<AppSizeProvider>();
  return Container(
    margin: const EdgeInsets.all(25),
    height: appSizeProvider.size!.height * 0.15,
    width: appSizeProvider.size!.width - 50,
    color: Colors.grey,
    child: InkWell(
      onTap: onPressed,
      child: Center(
        child: Text(
          text ?? "TEMP BOX",
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
