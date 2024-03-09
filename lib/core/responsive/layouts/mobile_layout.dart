import 'package:flutter/material.dart';
import 'package:kiwit/core/responsive/providers/layout_provider.dart';
import 'package:kiwit/features/featured/presentation/pages/home_page.dart';
import 'package:provider/provider.dart';

import '../../../features/gpt/presentation/pages/gpt_list_page.dart';
import '../../../features/lecture/presentation/pages/lecture_list_page.dart';
import '../../../features/quiz/presentation/pages/quiz_list_page.dart';
import '../../../features/user/presentation/pages/user_profile_page.dart';

List<Widget> pageViewItems = [
  const HomePage(),
  const LectureListPage(),
  const QuizListPage(),
  const GptListPage(),
  const UserProfilePage(),
];

const bottomNavigationBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.menu_book),
    label: 'Lecture',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.question_answer),
    label: 'Quiz',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.article),
    label: 'GPT',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'MY',
  ),
];

class MobileLayout extends StatelessWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        children: pageViewItems,
      ),
      bottomNavigationBar: Consumer<PageControllerProvider>(
        builder: (context, pageControllerProvider, _) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            items: bottomNavigationBarItems,
            currentIndex: pageControllerProvider.index,
            onTap: (index) {
              pageControllerProvider.setIndex(index: index);
            },
          );
        },
      ),
    );
  }
}
