import 'package:flutter/material.dart';
import 'package:kiwit/core/responsive/layouts/desktop_layout.dart';
import 'package:kiwit/core/responsive/layouts/responsive_layout.dart';
import 'package:kiwit/core/responsive/layouts/tablet_layout.dart';
import 'package:kiwit/features/auth/presentation/pages/log_in_page.dart';
import 'package:kiwit/features/featured/presentation/pages/home_page.dart';
import 'package:kiwit/features/gpt/presentation/pages/gpt_list_page.dart';
import 'package:kiwit/features/lecture/presentation/pages/lecture_list_page.dart';
import 'package:kiwit/features/quiz/presentation/pages/quiz_list_page.dart';
import 'package:kiwit/features/user/presentation/pages/user_profile_page.dart';

import '../../core/responsive/layouts/mobile_layout.dart';
import '../../features/lecture/presentation/pages/lecture_content_page.dart';
import '../../features/lecture/presentation/pages/lecture_level_page.dart';
import '../../features/quiz/presentation/pages/quiz_content_page.dart';
import '../../features/quiz/presentation/pages/quiz_result_page.dart';

class AppRoutes {
  /// Responsive
  ///
  static const String responsiveLayout = "/responsive-layout";
  static const String mobileLayout = "/mobile-layout";
  static const String tabletLayout = "/tablet-layout";
  static const String desktopLayout = "/desktop-layout";

  /// Auth
  ///
  static const String logIn = "/log-in";
  static const String signUp = "/sign-up";

  /// Home
  ///
  static const String home = "/home";

  /// User
  ///
  static const String userProfile = "/user-profile";
  static const String userHistory = "/user-history";
  static const String userAchievements = "/user-achievements";

  /// Lectures
  ///
  static const String lectureList = "/lecture-list";
  static const String lectureLevel = "/lecture-level";
  static const String lectureContent = "/lecture-content";

  /// Quiz
  ///
  static const String quizList = "/quiz-list";
  static const String quizContent = "/quiz-content";
  static const String quizResult = "/quiz-result";

  /// GPT
  ///
  static const String gptList = "/gpt-list";
  static const String gptContent = "/gpt-content";
  static const String gptResult = "/gpt-result";
}

class AppRouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.responsiveLayout:
        return MaterialPageRoute(
          builder: (context) => ResponsiveLayout(
            mobileLayout: MobileLayout(),
            tabletLayout: const TabletLayout(),
            desktopLayout: const DesktopLayout(),
          ),
        );

      case AppRoutes.mobileLayout:
      case AppRoutes.logIn:
        return MaterialPageRoute(
          builder: (context) => const LogInPage(),
        );

      case AppRoutes.signUp:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );

      case AppRoutes.userProfile:
        return MaterialPageRoute(
          builder: (context) => const UserProfilePage(),
        );

      case AppRoutes.userHistory:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.userAchievements:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.lectureList:
        return MaterialPageRoute(
          builder: (context) => const LectureListPage(),
        );

      case AppRoutes.lectureLevel:
        return MaterialPageRoute(
          builder: (context) => const LectureLevelPage(),
        );

      case AppRoutes.lectureContent:
        return MaterialPageRoute(
          builder: (context) => const LectureContentPage(),
        );

      case AppRoutes.quizList:
        return MaterialPageRoute(
          builder: (context) => const QuizListPage(),
        );

      case AppRoutes.quizContent:
        return MaterialPageRoute(
          builder: (context) => const QuizContentPage(),
        );

      case AppRoutes.quizResult:
        return MaterialPageRoute(
          builder: (context) => const QuizResultPage(),
        );

      case AppRoutes.gptList:
        return MaterialPageRoute(
          builder: (context) => const GptListPage(),
        );

      case AppRoutes.gptContent:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.gptResult:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Error"),
          ],
        ),
      ),
    );
  }
}
