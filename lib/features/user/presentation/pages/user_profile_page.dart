import 'package:flutter/material.dart';
import 'package:kiwit/features/auth/presentation/providers/auth_provider.dart';
import 'package:kiwit/injection_container.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Center(child: Text('User Profile Page')),
          IconButton(
            onPressed: () {
              AuthProvider authProvider = getIt<AuthProvider>();
              authProvider.signOut();
            },
            icon: const Icon(Icons.logout),
          )
        ],
      ),
    );
  }
}
