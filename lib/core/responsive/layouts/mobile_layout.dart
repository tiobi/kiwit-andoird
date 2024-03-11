// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kiwit/core/responsive/providers/page_controller_provider.dart';
import 'package:kiwit/features/featured/presentation/pages/home_page.dart';
import 'package:kiwit/injection_container.dart';
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
  MobileLayout({Key? key}) : super(key: key);

  PageControllerProvider pageControllerProvider =
      getIt<PageControllerProvider>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Consumer<PageControllerProvider>(
        builder: (context, pageControllerProvider, _) => PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageControllerProvider.pageController,
          onPageChanged: (index) {
            pageControllerProvider.setIndex(index: index);
          },
          children: pageViewItems,
        ),
      ),
      bottomNavigationBar: Consumer<PageControllerProvider>(
        builder: (context, pageControllerProvider, _) {
          return buildBottomNavigationBar();
        },
      ),
    );
  }
}

Widget buildBottomNavigationBar() {
  PageControllerProvider pageControllerProvider =
      getIt<PageControllerProvider>();

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
}
