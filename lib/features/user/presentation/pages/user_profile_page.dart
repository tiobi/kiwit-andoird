import 'package:flutter/material.dart';
import 'package:kiwit/features/auth/presentation/providers/auth_provider.dart';
import 'package:kiwit/features/featured/presentation/pages/home_page.dart';
import 'package:kiwit/injection_container.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              AuthProvider authProvider = getIt<AuthProvider>();
              authProvider.signOut();
            },
            icon: const Icon(Icons.logout),
          ),
          TempButton(text: "기록 내역 요약"),
          TempButton(text: "가장 최근 획득한 성취도"),
          TempButton(text: "좋아요/보관함 표시한 렉쳐"),
          TempButton(text: "좋아요/보관함 표시한 퀴즈"),
          TempButton(text: "Profile settings"),
          TempButton(text: "Subscription settings"),
          TempButton(text: "Alarm settings"),
          TempButton(text: "Email"),
          TempButton(text: "About this app"),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
