import 'package:flutter/material.dart';

class AppRoutes {
  /// Auth
  ///
  static const String logIn = "/logIn";
  static const String signUp = "/signUp";

  /// Home
  ///
  static const String home = "/home";

  /// User
  ///
  static const String userProfile = "/userProfile";
  static const String userHistory = "/userHistory";
  static const String userAchievements = "/userAchievements";

  /// Lectures
  ///
  static const String lectureList = "/lectureList";
  static const String lectureContent = "/lectureContent";

  /// Quiz
  ///
  static const String quizList = "/quizList";
  static const String quizContent = "/quizContent";
  static const String quizResult = "/quizResult";

  /// GPT
  ///
  static const String gptList = "/gptList";
  static const String gptContent = "/gptContent";
  static const String gptResult = "/gptResult";
}

class AppRouteManager {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.logIn:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.signUp:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.userProfile:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
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
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.lectureContent:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.quizList:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.quizContent:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.quizResult:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );

      case AppRoutes.gptList:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
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
