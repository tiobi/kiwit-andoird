import 'package:flutter/material.dart';
import 'package:kiwit/core/providers/app_size_provider.dart';

import '../../../../injection_container.dart';

class LectureSearchBarWidget extends StatelessWidget {
  LectureSearchBarWidget({Key? key}) : super(key: key);

  bool isTapped = false;

  void onTap() {
    isTapped = !isTapped;
  }

  @override
  Widget build(BuildContext context) {
    AppSizeProvider appSizeProvider = getIt<AppSizeProvider>();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
      height: appSizeProvider.size!.height * 0.05,
      width: appSizeProvider.size!.width - 50,
      color: Colors.grey,
      child: const TextField(
        decoration: InputDecoration(
          hintText: "Search",
          hintStyle: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
